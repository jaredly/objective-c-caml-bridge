(* Key Value coding *)
external get : 'a Objc.id -> string -> [`NSValue] Objc.id = "camlkvc_get"
external set : 'a Objc.id -> string -> [`NSValue] Objc.id -> unit = "camlkvc_set"
