open Objc


external init : unit -> unit = "caml_init_NSErrors"
let _ = init()
