open Objc
open NSObjCRuntime


external init : unit -> unit = "caml_init_NSZone"
let _ = init()
