open Printf

type t =
    | EVal of int64 option
    | ESym of string
    | EOp of string * t list

let rec eval_expr = function
  | EVal x -> x
  | ESym s -> None
  | EOp ("neg", [e]) -> (match eval_expr e with None -> None | Some i -> Some (Int64.neg i))
  | EOp ("<<", [v; s]) -> 
      begin match eval_expr v, eval_expr s with
	| Some v, Some s -> Some (Int64.shift_left v (Int64.to_int s))
	| _, _ -> None
      end
  | EOp ("|", [l; r]) -> 
      begin match eval_expr l, eval_expr r with
	| Some l, Some r-> Some (Int64.logor l r)
	| _, _ -> None
      end
  | _ -> None

let last_value = ref (Some 0L)
let eval = function
  | None -> 
      last_value := (match !last_value with 
	| None -> None
	| Some i -> Some (Int64.add 1L i)
		    );
      !last_value
  | Some e -> 
      let v = eval_expr e in
	last_value := v;
	v

(* definitely ugly - but we don't have a context in the parser,
 * and enums can appear at too many nodes in the AST.
 *)
let enums = ref ([] : (string * int64 option) list list)
let add x = Utils.add_hd x enums
let dump ow =
  match !enums with 
    | [] -> ()
    | l -> 
	kprintf ow#ml "(* ENUMS *)\n";
	List.iter (List.iter (function 
	  | (s, Some v) -> kprintf ow#ml "let _%s = %LdL\n" s v
	  | (s, None) -> kprintf ow#ml "(* let_%s = ?? *)\n" s
			     )) 
	  (List.rev l);
	kprintf ow#ml "\n\n";
	enums := []

