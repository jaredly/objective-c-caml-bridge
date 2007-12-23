type t =
    | EVal of int64
    | ESym of string
    | EOp of string * t list

let rec eval_expr = function
  | EVal i -> i
  | ESym s -> 0L
  | EOp ("neg", [e]) -> Int64.neg (eval_expr e)
  | EOp ("<<", [v; s]) -> Int64.shift_left (eval_expr v) (Int64.to_int (eval_expr s))
  | EOp ("|", [l; r]) -> Int64.logor (eval_expr l) (eval_expr r)
  | _ -> assert false

let last_value = ref 0L
let eval = function
  | None -> last_value := Int64.add 1L !last_value; !last_value
  | Some e -> 
      let v = eval_expr e in
	last_value := v;
	v
