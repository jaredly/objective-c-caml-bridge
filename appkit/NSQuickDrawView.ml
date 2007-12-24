(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSView


external init : unit -> unit = "caml_init_NSQuickDrawView"
let _ = init()
let make_NSView_of_NSQuickDrawView (o : [`NSQuickDrawView] nativeNSObject) = (Obj.magic o : [`NSView] nativeNSObject)
(* Class object for NSQuickDrawView *)
let class_NSQuickDrawView = object
   val repr = Classes.find "NSQuickDrawView"
   method _new = (Objc.objcnew repr : [`NSQuickDrawView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSQuickDrawView] nativeNSObject)
end
(* Encapsulation for native instance of NSQuickDrawView *)
class native_NSQuickDrawView = fun (o : [`NSQuickDrawView] nativeNSObject) -> object (self)
   inherit native_NSView (make_NSView_of_NSQuickDrawView o) as super
   method qdPort =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "qdPort:")[]) : [`void] Objc.nativeNSObject)
end
