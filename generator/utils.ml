(** Bunch of utilities *)
(** Copyright 2007, Francois Rouaix - extracted out of libfmr to simplify distribution *)
open Printf
open Unix

(*
 * Cascading comparions
 *)
let rec mcompare = function
  | [] -> 0
  | x::l -> if x = 0 then mcompare l else x

(*
 * List utilities
 *)
let add_hd x r = r := x :: !r

let rec map_partial f = function
  | [] -> []
  | x::l ->
      match f x with
      | None -> map_partial f l
      | Some y -> y :: map_partial f l


let except x l = 
  let rec f keep = function
    | [] -> raise Not_found
    | x'::rest when x = x' -> List.rev_append keep rest
    | notx ::rest -> f (notx::keep) rest
  in
  f [] l

let complete_graph l =
  let rec aux pairs = function
    | [] -> pairs
    | x::l -> aux ((List.map (fun y -> x,y) l) @ pairs) l
  in aux [] l

let rec choices = function
  | [] -> [[]]
  | cs :: rest ->
      let others = choices rest in
	List.flatten (List.map (fun c -> List.map (fun o -> c :: o) others) cs)

(*
# inserts 0 [1;2;3];;
- : int list list = [[0; 1; 2; 3]; [1; 0; 2; 3]; [1; 2; 0; 3]; [1; 2; 3; 0]]
*)

let rec inserts i = function
  | [] -> [[i]]
  | x :: l -> 
      (i::x::l) (* insert before x *) 
      :: (* or insert after x *)
	List.map (fun l -> x::l) (inserts i l)
	  

let rec inserts_keep_ends i = function
  | [x;y] -> [[x;i;y]]
  | x :: ((y :: _) as l) -> 
      (x::i::l) (* insert after x *) 
      :: (* or recurse *)
	List.map (fun l -> x::l) (inserts_keep_ends i l)
  | [] -> []
  | [x] -> [[x]]


(*
(** nth first elements of a list - returns less than n if list is not long enough *)	  
let hdn n l =
  let rec need n has l = 
    match n, l with
    | 0, _ -> List.rev has
    | n, [] -> List.rev has
    | n, x::l -> need (pred n) (x::has) l
  in
  need n [] l

(** cuts out n first elements of a list *)
let rec tln n l =
  match n, l with
    | 0, _ -> l
    | n, [] -> []
    | n, x::l -> tln (pred n) l
*)

let split_list n l =
  let rec walk want taken l = 
    match want, l with
    | 0, _ -> List.rev taken, l   (* i'm done *)
    | n, [] -> List.rev taken, [] (* i can't go further *)
    | n, x::l -> walk (pred n) (x::taken) l
  in
    walk n [] l

let hdn n l = fst (split_list n l)
let tln n l = snd (split_list n l)

(** uniq -c:  sorted list with duplicates -> list with counts (in same order) *)
let uniq = function
  | [] -> []
  | first::rest ->
      let rec aux result (last,n) = function
	| [] -> (last,n) :: result
	| x::l -> 
	    if x = last then aux result (last,n+1) l
	    else aux ((last,n)::result) (x,1) l
      in
	List.rev (aux [] (first,1) rest)

(** Average of a list of integers *)
let avg l =
  let sum, n = List.fold_right (fun x (sum,n) -> x+sum, succ n) l (0,0) in
    float sum /. float n

let intlistmin = function
  | [] -> assert false
  | x::l -> List.fold_right (fun x m -> if x < m then x else m) l x

let floatlistmin = function
  | [] -> assert false
  | x::l -> List.fold_right (fun x m -> if x < m then x else m) l x

let listmin f = function
  | [] -> assert false
  | x::l -> List.fold_right (fun x m -> let y = f x in if y < m then y else m) l (f x)

(** Partition to N *)
let npartition f l =
  let h = new Ohash.autoinit (fun _ -> ref []) 501 in
    List.iter (fun x -> add_hd x (h#find (f x))) l;
    h#fold (fun y rxs l -> (y, !rxs) :: l) []


(*
 * Commonly used functors instantiations
 *)

module StringSet = Set.Make(struct type t = string let compare = compare end)
module StringMap = Map.Make(struct type t = string let compare = compare end)

(* Subset: calculates all subsets of a set (including empty and the set itself) *)
module SubSet (S : Set.S) =
  struct
    let rec subsets s =
      if S.is_empty s then [s] else
	let e = S.choose s in
	let s' = S.remove e s in
	let ss = subsets s' in 
	  ss @ List.map (S.add e) ss
  end


(*
 * Str missing stuff
 *)
let strmatch r n s =
  try
    let _ = Str.search_forward (Str.regexp r) s 0 in
    let rec groups l n = 
      if n = 0 then l
      else groups ((Str.matched_group n s) :: l) (pred n)
    in true, groups [] n
  with
    | Not_found -> false, []

let rec strmatches s = function 
  | [] -> raise Not_found
  | (r,n,f) :: rest ->
      let b,l = strmatch r n s in
	if b then f l
	else strmatches s rest

(*
 * File stuff
 *   let oc = ... in .... ; close_out oc sucks
 *)
let with_out_channel ?(close_when_done=true) chan f =
  let finally() = if close_when_done then close_out chan in
  try
    f chan; finally()
  with
    | e -> finally(); raise e

let with_in_channel ?(close_when_done=true) chan f =
  let finally() = if close_when_done then close_in chan in
  try
    f chan; finally()
  with
    | e -> finally(); raise e


let rfile_use_tmp = ref false
let rfile = 
  let r = ref 0 in 
    (fun () ->
       incr r;
     object (self)
       val mutable dir = "/tmp"
       val mutable base = string_of_int !r
       method init s = 
	 dir <- Filename.dirname s;
	 base <- Filename.chop_extension (Filename.basename s);
	 self
       method make b ext = Filename.concat (if !rfile_use_tmp then "/tmp" else dir) (b ^ "-" ^ base ^ ext)
     end)

(*
 * Queue stuff (Queue.iter doesn't empty the queue)
 *)
let do_queue f q =
  try
    while true do 
      f (Queue.take q)
    done
  with
    | Queue.Empty -> ()

(*
 * Missing stuff from Arg
 *)

(** Ordered anonymous string args *)
let ordered_anonymous rl =
  let l = ref rl in
  (fun s ->
     match !l with
       | [] -> raise (Arg.Bad "Too many anonymous arguments")
       | r :: rest ->
	   match !r with
	     | Some _ -> raise (Arg.Bad "Option already specified")
	     | None -> r := Some s; l := rest)


(** betterparse *)
let betterparse opts anon desc =
  let opts = ("-tmp", Arg.Set rfile_use_tmp, "Use tmp for rfile") :: opts in
  let opts = List.map (function 
			 | o, Arg.Set_int r, d -> o, Arg.Set_int r, d ^ sprintf " (default=%d)" !r
			 | o, Arg.Set_string r, d -> o, Arg.Set_string r, d ^ sprintf " (default=%s)" !r
			 | o, Arg.Set_float r, d -> o, Arg.Set_float r, d ^ sprintf " (default=%f)" !r
			 | o, Arg.Set r, d -> o, Arg.Set r, d ^ sprintf " (default=%s)" (if !r then "T" else "F")
			 | o, a, d -> o, a, d
		      ) opts
  in
    Arg.parse opts anon desc

(** Placeholders *)
let variable_gensym = 
  let r = ref 0 in
    (fun () -> incr r; sprintf "v%08d" !r)

class ['a] variable = object
  constraint 'a = <id : string; ..>
  val mutable v = (None : 'a option)
  val u = variable_gensym()

  method get = 
    match v with
      | Some t -> t
      | None -> assert false

  method id = 
    match v with
      | None -> u
      | Some t -> t#id

  method bound = v
  method bind t = v <- Some t
end

let kvariable x = 
  let o = new variable in
    o#bind x;
    o


(** Time utils *)
let epoch s = 
  Scanf.sscanf s "%4d%2d%2d%c%2d:%2d:%2d"
    (fun year month day _ hour min secs ->
       let tm = { tm_sec = secs;
		  tm_min = min;
		  tm_hour = hour;
		  tm_mday = day;
		  tm_mon = month - 1;
		  tm_year = year - 1900;
		  tm_wday = 0;
		  tm_yday = 0;
		  tm_isdst = false } in
    fst (Unix.mktime tm))

class type reader = object
  method start : (unit -> string) -> unit
  method line  : string -> unit
  method finish : bool -> unit
end


let load_internal ?(debug = false) reader cin finally = 
  let line = ref 0 in
  let getline() = 
    incr line; 
    if debug && !line mod 10000 = 0 then Debug.f "Processed %8d lines" !line;
    input_line cin 
  in
    reader#start getline; (* allows reader to perform some initialisations *)
    try
      while true do reader#line (getline()) done; assert false
    with
      | End_of_file -> 
	  finally(); 
	  reader#finish true;
	  !line
      | e -> 
	  finally(); 
	  if debug then Debug.f "ERROR line %d\n" !line; 
	  reader#finish false;
	  raise e

let load_channel ?(debug = false) reader cin =
  load_internal ~debug:debug reader cin (fun () -> ())

let load ?(debug = false) reader file = 
  let cin = open_in file in
  let finally () = close_in cin in
  load_internal ~debug:debug reader cin finally

let line_filter args doc f =
  let do_stdin = ref true in
    Arg.parse [] (fun s -> do_stdin := false; print_endline (f s)) doc;
    if !do_stdin then
      try
	while true do
	  print_endline (f (read_line()))
	done
      with
	| End_of_file -> ()

