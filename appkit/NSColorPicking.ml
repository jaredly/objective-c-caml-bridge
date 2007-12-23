open Objc
open NSObject


external init : unit -> unit = "caml_init_NSColorPicking"
let _ = init()
