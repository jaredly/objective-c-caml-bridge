(** Selectors *)
type t (* abstract type - this is SEL, wrapped in a custom block *)

external find : string -> t = "caml_find_selector"

let find_list l = find ((String.concat ":" l) ^ ":")
