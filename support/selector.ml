(** Selectors *)
type t (* abstract type - this is exactly SEL *)
let table = Hashtbl.create 5999
let register (k : string) (s : t)  = Hashtbl.add table k s
let () = Callback.register "register_selector" register
let find = Hashtbl.find table
let find_list l = Hashtbl.find table ((String.concat ":" l) ^ ":")
