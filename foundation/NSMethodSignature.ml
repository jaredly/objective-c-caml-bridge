open Objc
open NSObject


external init : unit -> unit = "caml_init_NSMethodSignature"
let _ = init()
(* Class object for NSMethodSignature *)
let class_NSMethodSignature = object
   val o = Classes.find "NSMethodSignature"
   method _new = (Objc.objcnew o : [`NSMethodSignature] nativeNSObject)
end
(* Encapsulation for native instance of NSMethodSignature *)
class native_NSMethodSignature = fun (o : [`NSMethodSignature] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method numberOfArguments =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfArguments:")[]) : int)
   method getArgumentTypeAtIndex (index : int) =
     (get_string (Objc.invoke Objc.tag_string o (Selector.find "getArgumentTypeAtIndex:")[make_int index]) : string)
   method frameLength =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "frameLength:")[]) : int)
   method isOneway =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isOneway:")[]) : bool)
   method methodReturnType =
     (get_string (Objc.invoke Objc.tag_string o (Selector.find "methodReturnType:")[]) : string)
   method methodReturnLength =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "methodReturnLength:")[]) : int)
end
