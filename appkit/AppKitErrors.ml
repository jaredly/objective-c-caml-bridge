open Objc
open NSObject


external init : unit -> unit = "caml_init_AppKitErrors"
let _ = init()
