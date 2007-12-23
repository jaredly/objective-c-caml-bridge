type c_type = 
    | NamedType of string (* foo *)
    | Pointer of bool * c_type  (* foo * and foo * const *)
    | Qualified of string * c_type (* long foo *)
    | Fun of c_type list * c_type (* args -> res *)
    | ArrayType of c_type * int64 option 

type qualified_c_type = string option * c_type (* inout, etc. *)

let rec string_of_c_type = function
  | NamedType s -> s
  | Pointer (constp, t) -> (if constp then "const " else "") ^ "pointer to " ^ string_of_c_type t
  | Qualified (q,t) -> q ^ " " ^ string_of_c_type t
  | Fun (tl, t) -> String.concat "->" (List.map string_of_c_type (tl @ [t]))
  | ArrayType (t,_) -> "array of " ^ string_of_c_type t

type method_kind = 
    | ClassMethod  (* + *)
    | InstanceMethod (* - *)

type interface_kind =
    | CategoryInterface of string
    | ClassInterface of string option

type declaration =
    | Visibility of string
    | Variable of c_type * (string * int option * int option) list

(* return type and list of selectors *)
type selector = string * (c_type * string * bool) option
type method_declaration = method_kind * c_type * selector list


type interface =
  interface_kind * string list * declaration list * method_declaration list

type phrase =
    | Comment of string
    | Interface of string * interface
    | Protocol of string * string list * method_declaration list
    | Class of string list
    | Preproc of string
    | Import of string
    | Enum of (string * int64 option) list
    | Ignore
