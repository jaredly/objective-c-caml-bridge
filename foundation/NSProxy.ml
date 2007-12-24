(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSProxy"
let _ = init()
(* Class object for NSProxy *)
let class_NSProxy = object
   val repr = Classes.find "NSProxy"
   method _new = (Objc.objcnew repr : [`NSProxy] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSProxy] nativeNSObject)
   method alloc =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "alloc:")[]) : [`NSProxy] Objc.nativeNSObject)
   method allocWithZone (zone : [`NSZone] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "allocWithZone:")[make_pointer_from_object zone]) : [`NSProxy] Objc.nativeNSObject)
   method class_ =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "class:")[]) : [`NSProxy] Objc.nativeNSObject)
   method respondsToSelector (aSelector : selector) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "respondsToSelector:")[make_selector aSelector]) : [`NSProxy] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSProxy *)
class native_NSProxy = fun (o : [`NSProxy] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
   method forwardInvocation (invocation : [`NSInvocation] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "forwardInvocation:")[make_pointer_from_object invocation]) : unit)
   method methodSignatureForSelector (sel : selector) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "methodSignatureForSelector:")[make_selector sel]) : [`NSMethodSignature] Objc.nativeNSObject)
   method dealloc =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "dealloc:")[]) : unit)
   method description =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "description:")[]) : [`NSString] Objc.nativeNSObject)
end
