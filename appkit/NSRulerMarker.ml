(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSRulerMarker] id) -> object
  inherit Im_NSRulerMarker.methods
  method repr = r
end

(* Class object for NSRulerMarker *)
let c = Classes.find "NSRulerMarker"
let _new()= (Objc.objcnew c : [`NSRulerMarker] id)
let alloc() = (Objc.objcalloc c : [`NSRulerMarker] id)
