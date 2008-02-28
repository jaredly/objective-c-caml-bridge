(** Classes *)
external find_class : string -> [`NSClass] Objc.id = "caml_find_class"

let table = Hashtbl.create 5999
let register (k : string) (s : [`NSClass] Objc.id) = Hashtbl.add table k s
let find class_name = 
  try
    Hashtbl.find table class_name
  with
    | Not_found ->
	let o = find_class class_name in
	  register class_name o;
	  o
