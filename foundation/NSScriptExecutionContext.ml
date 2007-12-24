(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSScriptExecutionContext"
let _ = init()
let make_NSObject_of_NSScriptExecutionContext (o : [`NSScriptExecutionContext] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSScriptExecutionContext *)
let class_NSScriptExecutionContext = object
   val repr = Classes.find "NSScriptExecutionContext"
   method _new = (Objc.objcnew repr : [`NSScriptExecutionContext] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSScriptExecutionContext] nativeNSObject)
   method sharedScriptExecutionContext =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedScriptExecutionContext:")[]) : [`NSScriptExecutionContext] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSScriptExecutionContext *)
class native_NSScriptExecutionContext = fun (o : [`NSScriptExecutionContext] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSScriptExecutionContext o) as super
   method topLevelObject =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "topLevelObject:")[]) : [`NSObject] Objc.nativeNSObject)
   method setTopLevelObject (obj : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTopLevelObject:")[make_pointer_from_object obj]) : unit)
   method objectBeingTested =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectBeingTested:")[]) : [`NSObject] Objc.nativeNSObject)
   method setObjectBeingTested (obj : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setObjectBeingTested:")[make_pointer_from_object obj]) : unit)
   method rangeContainerObject =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "rangeContainerObject:")[]) : [`NSObject] Objc.nativeNSObject)
   method setRangeContainerObject (obj : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRangeContainerObject:")[make_pointer_from_object obj]) : unit)
end
