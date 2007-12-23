open Objc
open NSObject


external init : unit -> unit = "caml_init_NSScriptExecutionContext"
let _ = init()
(* Class object for NSScriptExecutionContext *)
let class_NSScriptExecutionContext = object
   val o = Classes.find "NSScriptExecutionContext"
   method _new = (Objc.objcnew o : [`NSScriptExecutionContext] nativeNSObject)
   method sharedScriptExecutionContext =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedScriptExecutionContext:")[]) : [`NSScriptExecutionContext] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSScriptExecutionContext *)
class native_NSScriptExecutionContext = fun (o : [`NSScriptExecutionContext] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method topLevelObject =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "topLevelObject:")[]) : [`NSObject] Objc.nativeNSObject)
   method setTopLevelObject (obj : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTopLevelObject:")[make_pointer_from_object obj]) : unit)
   method objectBeingTested =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectBeingTested:")[]) : [`NSObject] Objc.nativeNSObject)
   method setObjectBeingTested (obj : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setObjectBeingTested:")[make_pointer_from_object obj]) : unit)
   method rangeContainerObject =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "rangeContainerObject:")[]) : [`NSObject] Objc.nativeNSObject)
   method setRangeContainerObject (obj : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRangeContainerObject:")[make_pointer_from_object obj]) : unit)
end
