open Objc
open NSObject


external init : unit -> unit = "caml_init_NSUserInterfaceValidation"
let _ = init()
