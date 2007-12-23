open Objc
open NSObjCRuntime


external init : unit -> unit = "caml_init_NSDecimal"
let _ = init()
