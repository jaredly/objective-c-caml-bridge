(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSRunLoop] id) -> object
  inherit Cati_NSOrderedPerform.methods_NSRunLoop
  inherit Cati_NSRunLoopConveniences.methods_NSRunLoop
  inherit Im_NSRunLoop.methods
  method repr = r
end

(* Class object for NSRunLoop *)
let c = Classes.find "NSRunLoop"
let _new()= (Objc.objcnew c : [`NSRunLoop] id)
let alloc() = (Objc.objcalloc c : [`NSRunLoop] id)
(* class methods for category NSOrderedPerform of NSRunLoop *)
(* class methods for category NSRunLoopConveniences of NSRunLoop *)
let currentRunLoop () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentRunLoop")[])
       : [`NSRunLoop] Objc.id))
