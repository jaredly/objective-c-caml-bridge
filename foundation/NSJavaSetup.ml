open Objc
open NSObject


external init : unit -> unit = "caml_init_NSJavaSetup"
let _ = init()
