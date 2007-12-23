open Objc


external init : unit -> unit = "caml_init_NSObjCRuntime"
let _ = init()
