open Objc
open NSObjCRuntime


external init : unit -> unit = "caml_init_NSHFSFileTypes"
let _ = init()
