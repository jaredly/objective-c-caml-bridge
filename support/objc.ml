(* Types and runtime support*)

(* NSObject *)
type 'a nativeNSObject

(* this allows compiling things that we don't know how to support yet *)
type unsupported 
let unsupported x = assert false

(* this variant type is used to inject ocaml values into one type for building
 * argument lists to invoke, and to return a value from invoke
 *)
type selector = Selector.t

type 'a ffi =
    | Unit
    | Bool of bool 
    | Char of char
    | Int of int
    | Int64 of int64
    | Double of float
    | String of string
    | Pointer of 'a 
    | Selector of selector
    | NSErrorArg of bool (* for  NSError ** arguments; true means that we want to raise an exception if 
			    the field gets set to non-nil by the method *)
    | NSRange of int * int (* location and length *)

(* when an argument NSError ** is set to non-nil *)
exception NSError of string

(* Object encapsulated in a class w/ some methods *)
type 'a t = < o : 'a nativeNSObject >

(* argument is assumed to be a class object *)
external objcnew : 'a nativeNSObject -> 'b nativeNSObject = "caml_message_new"
external objcalloc : 'a nativeNSObject -> 'b nativeNSObject = "caml_message_alloc"

(* arguments: tag for return value injection, target, selector, argument list *)
external invoke : int -> 'a nativeNSObject -> Selector.t -> 'b ffi list -> 'c ffi = "caml_invoke"

(* some usual inits *)
external init : unit -> unit = "caml_init_default"
let () = 
  let () = Callback.register_exception "NSError" (NSError "foo") in
    init() (* MUST DO THIS HERE - it sets the "new:" selector used below *)

(* tag values *)
let tag_unit = (Obj.magic Unit : int)	(* not really a tag *)
let tag_bool = Obj.tag (Obj.repr (Bool true))
let tag_char = Obj.tag (Obj.repr (Char 'a'))
let tag_int = Obj.tag (Obj.repr (Int 0))
let tag_int64 = Obj.tag (Obj.repr (Int64 0L))
let tag_float = Obj.tag (Obj.repr (Double 0.0))
let tag_string = Obj.tag (Obj.repr (String "foo"))
let tag_pointer = Obj.tag (Obj.repr (Pointer Unit))
let tag_selector = Obj.tag (Obj.repr (Selector (Selector.find "new:")))
let tag_error = (Obj.tag (Obj.repr (NSErrorArg true)))
let tag_nsrange = (Obj.tag (Obj.repr (NSRange (0,0))))
let tag_unsupported = -1

(* injections from ocaml types to ffi: use this to build argument lists *)
let make_unit () = Unit
let make_bool b = Bool b
let make_char c = Char c
let make_int i = Int i
let make_int64 i = Int64 i
let make_float d = Double d
let make_string s = String s
let make_pointer p = Pointer p
let forget_type (x : 'a nativeNSObject) = (Obj.magic x : [`NSObject] nativeNSObject)
let make_pointer_from_object (o : 'a t) = Pointer (forget_type o#o)
let make_selector s = Selector s
let make_error b = NSErrorArg b
let make_range (loc, len) = NSRange (loc, len)

(* projections from ffi to ocaml type: use this to get result of method *)
let get_unit = function
  | Unit -> ()
  | _ -> assert false
let get_bool = function
  | Bool b -> b
  | _ -> assert false
let get_char = function
  | Char c -> c
  | _ -> assert false
let get_int = function
  | Int i -> i
  | _ -> assert false
let get_int64 = function
  | Int64 i -> i
  | _ -> assert false
let get_float = function
  | Double d -> d
  | _ -> assert false
let get_string = function
  | String s -> s
  | _ -> assert false
let get_pointer = function
  | Pointer p -> p
  | _ -> assert false
let get_selector = function
  | Selector s -> s
  | _ -> assert false
let get_range = function
  | NSRange (loc, len) -> loc, len
  | _ -> assert false

(* helpers for arg list building - makes nice syntax *)
let (++) f g = fun x -> f (g x)

let arg a a_sel a_inject =
  fun (sels, args) -> a_sel :: sels, a_inject a :: args

let opt_arg a a_sel a_inject =
  fun (sels, args) ->
    match a with
      | None -> sels, args
      | Some v -> a_sel :: sels, a_inject v :: args

