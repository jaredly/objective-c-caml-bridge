(** Classes *)
let table = Hashtbl.create 5999
let register (k : string) (s : [`NSClass] Objc.nativeNSObject) = Hashtbl.add table k s
let () = Callback.register "register_class" register
let find = Hashtbl.find table
