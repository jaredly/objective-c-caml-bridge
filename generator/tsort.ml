(* Topological sort *)
(* From More Programming Pearls *)
open Utils

(* Partial order encoding *)
type 'a entry = {
    node : 'a;
    mutable pred_count : int;
    mutable successors : 'a entry list
  }
    
type 'a t = ('a, 'a entry) Hashtbl.t
    
exception Cyclic
  
let find_entry order node =
  try
    Hashtbl.find order node
  with
    | Not_found -> 
	let e = {node = node; pred_count = 0; successors = []} in
	  Hashtbl.add order node e;
	  e
	    
let create () = Hashtbl.create 101
  
(* Inverted args because sort builds list in reverse order 
 * and we want to avoid a List.rev on the final result
 *)
let add_relation order succ pred =
  let pred_entry = find_entry order pred
  and succ_entry = find_entry order succ in
    if List.memq succ_entry pred_entry.successors then false
    else begin
	succ_entry.pred_count <- succ_entry.pred_count + 1;
	pred_entry.successors <- succ_entry::pred_entry.successors;
	true
      end
      
let add_element order e = 
  ignore (find_entry order e)

(* this can be shared between the version that fails on cycles and the one 
 * that handles cycles
 *)
let process_queue order q result =     
  try 
    while true do
      let t = Queue.take q in
	result := t.node :: !result;
	List.iter (fun s -> 
	  let n = s.pred_count - 1 in
	    s.pred_count <- n;
	    if n = 0 then Queue.add s q)
	  t.successors
    done
  with
    | Queue.Empty -> 
	(* we don't remove anything from the table, so we're looking
	   for nodes that have still predecessors *)
	Hashtbl.iter 
	  (fun _ node -> if node.pred_count <> 0 then raise Cyclic)
	  order

let sort order =
  let q = Queue.create () 
  and result = ref [] in
    Hashtbl.iter 
      (fun _ ({pred_count = n} as node) -> if n = 0 then Queue.add node q)
      order;
    process_queue order q result;
    !result

(* How to find a cycle? *)
(* don't know much about 'a, so using physical equality... *)
let find_cycle order =
  let rec dfs visited = function
    | [] -> None
    | x::l -> 
	if List.memq x visited then Some visited
	else begin
	    match dfs (x::visited) (x.successors) with
	      | None -> dfs visited l
	      | r -> r
	  end
  in
    match Hashtbl.fold (fun _ e result ->
      match result with 
	| None -> if e.pred_count > 0 then dfs [e] e.successors else None
	| x -> x)
      order None
    with
      | None -> assert false
      | Some l -> l

let merge_cycles cl =
  let do_one c csl =
    let tomerge,independent = List.partition (fun cs -> List.exists (fun x -> StringSet.mem x cs) c) csl in
      List.fold_right (StringSet.union) tomerge (List.fold_right StringSet.add c StringSet.empty) :: independent
  in
    List.fold_right do_one cl []


let sort_with_cycles order =
  let q = Queue.create() in
  let result = ref [] in
  let cycles = ref [] in
  let remove_edge na nb =
      Debug.f "Removing edge from %s to %s" nb.node na.node;
      nb.successors <- List.filter (fun x -> x != na) nb.successors;
      na.pred_count <- na.pred_count - 1;
      if na.pred_count = 0 then begin
	  Queue.add na q;
	  Debug.f "%s can now be processed" na.node
	end
  in
  let rec keep_sorting () =
      try
	Debug.f "processing queue";
	process_queue order q result
      with
	| Cyclic ->
	    Debug.f "cycle detected";
	    let cycle = find_cycle order in
	    let cycle_values = List.map (fun x -> x.node) cycle in
	      Debug.f "cycle found:";
	      List.iter (fun n -> Debug.f "%s, #pred=%d" n.node n.pred_count) cycle;
	      cycles := cycle_values :: !cycles;
	      (match cycle with a::b::_ -> remove_edge a b | _ -> assert false);
	      keep_sorting()
  in
    Hashtbl.iter 
      (fun _ ({pred_count = n} as node) -> if n = 0 then Queue.add node q)
      order;
    keep_sorting();
    !result, List.map StringSet.elements (merge_cycles !cycles)
