open Objc
open NSObjCRuntime
open NSZone


external init : unit -> unit = "caml_init_NSObject"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
   method load =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "load:")[]) : [`NSObject] Objc.nativeNSObject)
   method initialize =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initialize:")[]) : [`NSObject] Objc.nativeNSObject)
   method new_ =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "new:")[]) : [`NSObject] Objc.nativeNSObject)
   method allocWithZone (zone : [`NSZone] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allocWithZone:")[make_pointer_from_object zone]) : [`NSObject] Objc.nativeNSObject)
   method alloc =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "alloc:")[]) : [`NSObject] Objc.nativeNSObject)
   method copyWithZone (zone : [`NSZone] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "copyWithZone:")[make_pointer_from_object zone]) : [`NSObject] Objc.nativeNSObject)
   method mutableCopyWithZone (zone : [`NSZone] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "mutableCopyWithZone:")[make_pointer_from_object zone]) : [`NSObject] Objc.nativeNSObject)
   method superclass =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "superclass:")[]) : [`NSObject] Objc.nativeNSObject)
   method class_ =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "class:")[]) : [`NSObject] Objc.nativeNSObject)
   method poseAsClass (aClass : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "poseAsClass:")[make_pointer_from_object aClass]) : [`NSObject] Objc.nativeNSObject)
   method instancesRespondToSelector (aSelector : selector) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "instancesRespondToSelector:")[make_selector aSelector]) : [`NSObject] Objc.nativeNSObject)
   method conformsToProtocol (protocol : [`Protocol] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "conformsToProtocol:")[make_pointer_from_object protocol]) : [`NSObject] Objc.nativeNSObject)
   method instanceMethodForSelector (aSelector : selector) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "instanceMethodForSelector:")[make_selector aSelector]) : [`NSObject] Objc.nativeNSObject)
   method version =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "version:")[]) : [`NSObject] Objc.nativeNSObject)
   method setVersion (aVersion : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setVersion:")[make_int aVersion]) : [`NSObject] Objc.nativeNSObject)
   method instanceMethodSignatureForSelector (aSelector : selector) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "instanceMethodSignatureForSelector:")[make_selector aSelector]) : [`NSMethodSignature] Objc.nativeNSObject)
   method isSubclassOfClass (aClass : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "isSubclassOfClass:")[make_pointer_from_object aClass]) : [`NSObject] Objc.nativeNSObject)
   method description =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "description:")[]) : [`NSString] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method dealloc =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "dealloc:")[]) : unit)
   method finalize =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "finalize:")[]) : unit)
   method copy =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "copy:")[]) : [`NSObject] Objc.nativeNSObject)
   method mutableCopy =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "mutableCopy:")[]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method methodForSelector (aSelector : selector) =
     ((*IMP*) unsupported (Objc.invoke (*IMP*) Objc.tag_unsupported o (Selector.find "methodForSelector:")[make_selector aSelector]) : (*IMP*) unsupported)

*)
   method doesNotRecognizeSelector (aSelector : selector) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "doesNotRecognizeSelector:")[make_selector aSelector]) : unit)
   method forwardInvocation (anInvocation : [`NSInvocation] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "forwardInvocation:")[make_pointer_from_object anInvocation]) : unit)
   method methodSignatureForSelector (aSelector : selector) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "methodSignatureForSelector:")[make_selector aSelector]) : [`NSMethodSignature] Objc.nativeNSObject)
   method classForCoder =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "classForCoder:")[]) : [`NSObject] Objc.nativeNSObject)
   method replacementObjectForCoder (aCoder : [`NSCoder] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "replacementObjectForCoder:")[make_pointer_from_object aCoder]) : [`NSObject] Objc.nativeNSObject)
   method awakeAfterUsingCoder (aDecoder : [`NSCoder] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "awakeAfterUsingCoder:")[make_pointer_from_object aDecoder]) : [`NSObject] Objc.nativeNSObject)
end
