(* Key Value coding *)
(* same primitive with two types - obviously not too safe *)
external get_value : 'a Objc.id -> string -> [`NSValue] Objc.id = "camlkvc_get"
external get_object : 'a Objc.id -> string -> [`NSObject] Objc.id = "camlkvc_get"

external set_value : 'a Objc.id -> string -> [`NSValue] Objc.id -> unit = "camlkvc_set"
external set_object : 'a Objc.id -> string -> [`NSObject] Objc.id -> unit = "camlkvc_set"
