open Objc


external init : unit -> unit = "caml_init_AppKitDefines"
let _ = init()
