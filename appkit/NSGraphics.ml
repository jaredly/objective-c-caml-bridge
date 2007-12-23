open Objc
open NSGeometry


external init : unit -> unit = "caml_init_NSGraphics"
let _ = init()
