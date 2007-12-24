(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSMethodSignature"
let _ = init()
let make_NSObject_of_NSMethodSignature (o : [`NSMethodSignature] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSMethodSignature *)
let class_NSMethodSignature = object
   val repr = Classes.find "NSMethodSignature"
   method _new = (Objc.objcnew repr : [`NSMethodSignature] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMethodSignature] nativeNSObject)
end
(* Encapsulation for native instance of NSMethodSignature *)
class native_NSMethodSignature = fun (o : [`NSMethodSignature] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSMethodSignature o) as super
   method numberOfArguments =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfArguments:")[]) : int)
   method getArgumentTypeAtIndex (index : int) =
     (get_string (Objc.invoke Objc.tag_string repr (Selector.find "getArgumentTypeAtIndex:")[make_int index]) : string)
   method frameLength =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "frameLength:")[]) : int)
   method isOneway =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isOneway:")[]) : bool)
   method methodReturnType =
     (get_string (Objc.invoke Objc.tag_string repr (Selector.find "methodReturnType:")[]) : string)
   method methodReturnLength =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "methodReturnLength:")[]) : int)
end
