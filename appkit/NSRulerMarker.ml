(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSRulerMarker.methods
end

class t = fun (r :[`NSRulerMarker] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSRulerMarker *)
let c = Classes.find "NSRulerMarker"
let _new()= (Objc.objcnew c : [`NSRulerMarker] id)
let alloc() = (Objc.objcalloc c : [`NSRulerMarker] id)
