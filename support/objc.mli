type 'a id
type unsupported
val unsupported : 'a -> 'b
type selector = Selector.t
type 'a ffi =
    Unit
  | Bool of bool
  | Char of char
  | Int of int
  | Int64 of int64
  | Double of float
  | String of string
  | Pointer of 'a
  | Selector of selector
  | NSErrorArg of bool
  | NSRange of int * int
exception NSError of [ `NSError ] id
type 'a t = < repr : [`NSObject] id >
external objcnew : 'a id -> 'b id = "caml_message_new"
external objcalloc : 'a id -> 'b id = "caml_message_alloc"
external invoke : int -> 'a id -> Selector.t -> 'b ffi list -> 'c ffi = "caml_invoke"
external debug_invoke : bool -> unit = "caml_debug_invoke"
external init : unit -> unit = "caml_init_default"
val tag_unit : int
val tag_bool : int
val tag_char : int
val tag_int : int
val tag_int64 : int
val tag_float : int
val tag_string : int
val tag_pointer : int
val tag_selector : int
val tag_error : int
val tag_nsrange : int
val tag_unsupported : int
val make_unit : unit -> 'a ffi
val make_bool : bool -> 'a ffi
val make_char : char -> 'a ffi
val make_int : int -> 'a ffi
val make_int64 : int64 -> 'a ffi
val make_float : float -> 'a ffi
val make_string : string -> 'a ffi
val make_pointer : 'a -> 'a ffi
val forget_type : 'a id -> [ `NSObject ] id
val make_pointer_from_object : 'a t -> [ `NSObject ] id ffi
val make_selector : selector -> 'a ffi
val make_error : bool -> 'a ffi
val make_range : int * int -> 'a ffi
val get_unit : 'a ffi -> unit
val get_bool : 'a ffi -> bool
val get_char : 'a ffi -> char
val get_int : 'a ffi -> int
val get_int64 : 'a ffi -> int64
val get_float : 'a ffi -> float
val get_string : 'a ffi -> string
val get_pointer : 'a ffi -> 'a
val get_selector : 'a ffi -> selector
val get_range : 'a ffi -> int * int
val ( ++ ) : ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b
val arg : 'a -> 'b -> ('a -> 'c) -> 'b list * 'c list -> 'b list * 'c list
val opt_arg : 'a option -> 'b -> ('a -> 'c) -> 'b list * 'c list -> 'b list * 'c list
