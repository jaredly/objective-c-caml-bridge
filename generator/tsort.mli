(* Module [Tsort] : topological sort *)

type 'a t    (* the data structure holding the relation information *)

val create : unit -> 'a t
    (* [create ()] creates a new data structure *)

val add_element : 'a t -> 'a  -> unit
    (* [add_element p x] adds an element [x] to the structure [p] *)

val add_relation : 'a t -> 'a -> 'a -> bool
    (* [add_relation p x y] adds a relation [x < y] to [p] *)

val sort : 'a t -> 'a list
    (* [sort p] returns the topologically sorted list of elements in [p] *)

(*
val sort_with_cycles : 'a t -> 'a list * 'a list list
    (* [sort p] returns the topologically sorted list of elements in [p] *)
*)
val sort_with_cycles : string t -> string list * string list list
    (* [sort p] returns the topologically sorted list of elements in [p] *)
