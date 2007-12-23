(** Copyright 2007, Francois Rouaix - extracted out of libfmr to simplify distribution *)

(** Cascading comparison *)
val mcompare : int list -> int

(** cons in front of a list ref *)
val add_hd : 'a -> 'a list ref -> unit

(** returns list of (f x) when function is defined (i.e. returns Some y) *)
val map_partial : ('a -> 'b option) -> 'a list -> 'b list

(** Removes first (structural) copy of x in list *)
val except : 'a -> 'a list -> 'a list

(** Returns all combinations of (x,x') from x and x' in list *)
val complete_graph : 'a list -> ('a * 'a ) list

(** Combinatorial choices *)
val choices: 'a list list -> 'a list list

(** Insert an element at each possible place in a list *)
val inserts : 'a -> 'a list -> 'a list list
(** Insert an element at each possible place in a list, except front and back *)
val inserts_keep_ends : 'a -> 'a list -> 'a list list

(** Splits list at nth position (starting from 0); returns head and tail *)
val split_list : int -> 'a list -> ('a list * 'a list)

(** First nth elements of a list *)
val hdn : int -> 'a list -> 'a list
(** Tail of first nth elements of a list *)
val tln : int -> 'a list -> 'a list

(** As in unix command uniq -c; assumes list is sorted *)
val uniq : 'a list -> ('a * int) list

(** Partitions 'a list according to equality on the results of f *)
val npartition : ('a -> 'b) -> 'a list -> ('b * 'a list) list

(** Average of a list of int *)
val avg : int list -> float

(** Minimum integer in non-empty list *)
val intlistmin : int list -> int (* list must be non empty *)
val floatlistmin : float list -> float (* list must be non empty *)
val listmin : ('a -> int) -> 'a list -> int (* list must be non empty *)

module StringSet : Set.S with type elt = string
module StringMap : Map.S with type key = string
module SubSet (S : Set.S) : sig val subsets:  S.t -> S.t list end


(** Match all anonymous arguments to the list of string references
    returns a function suitable for the anonymous argument parameter of Arg.parse
    Arg.parse [] (ordered_anonymous foo_r bar_r) "...";
  *)
val ordered_anonymous : string option ref list -> (string -> unit)

(** Wrapper around Arg.parse, in which help string displays default values for Set_* fields *)
val betterparse : (Arg.key * Arg.spec * string) list -> Arg.anon_fun -> Arg.usage_msg -> unit
val line_filter : (Arg.key * Arg.spec * string) list -> string -> (string -> string) -> unit


(** [strmatch r ngroups s]  returns did_match, [n extracted match groups] *)
val strmatch : string -> int -> string -> bool * string list 
(** Applies the first matching rule from the list; this is like the match with construction
 *  but with reg exps
 *)
val strmatches : string -> (string * int * (string list -> 'a)) list -> 'a

(** wrappers for automatically closing channels even in case of exceptions *)
val with_in_channel : ?close_when_done:bool -> in_channel -> (in_channel -> unit) -> unit
val with_out_channel : ?close_when_done:bool -> out_channel -> (out_channel -> unit) -> unit

(** Generating "relative" file names *)
val rfile_use_tmp : bool ref
val rfile : unit -> (< init : string -> 'a; make : string -> string -> string > as 'a)

val do_queue : ('a -> unit) -> 'a Queue.t -> unit

(** Resource variable *)
(* Representing a resource variable, e.g. something that we'll need to bind
 * to an actual resource before using it.
 * Consumer is mostly for tracking.
 *)

class ['a] variable : object
  constraint 'a = <id : string; ..>
  method id : string
  method get : 'a
  method bound : 'a option
  method bind : 'a -> unit
end

val kvariable: 'a -> 'a variable

(** Time utils *)

(** epoch "20061019T12:34:56" *)
val epoch : string -> float


class type reader = object
  method start : (unit -> string) -> unit
  method line  : string -> unit
  method finish : bool -> unit
end

val load : ?debug:bool -> reader -> string -> int
val load_channel : ?debug:bool -> reader -> in_channel -> int

