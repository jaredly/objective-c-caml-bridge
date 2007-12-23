type objcSEL
let table = Hashtbl.create 5999
let register (k : string) (s : objcSEL)  = Hashtbl.add table k s
let init () = Callback.register "register_selector" register

let find = Hashtbl.find table
