val f : ?lvl:int -> ('a, unit, string, unit) format4 -> 'a

val set_level : int -> unit (* only message w/ level lower than this will be printed *)

val set_actor : string -> int
val set_clock : int -> unit


(* private *)
val set_actor_f : (string -> int) ref
val actor_f : (unit -> string) ref
val set_clock_f : (int -> unit) ref
val clock_f : (unit -> int) ref
val writer : (string -> unit) ref
