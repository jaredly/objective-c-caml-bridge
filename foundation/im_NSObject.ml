(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSObject *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method dealloc =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "dealloc")[])
       : unit)
  method finalize =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "finalize")[])
       : unit)
  method copy =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "copy")[])
       : [`NSObject] Objc.id)
  method mutableCopy =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mutableCopy")[])
       : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method methodForSelector (aSelector : selector) =
    ((*IMP*) unsupported (Objc.invoke (*IMP*) Objc.tag_unsupported self#repr (Selector.find "methodForSelector:")
      [make_selector aSelector]) : (*IMP*) unsupported)

*)
  method doesNotRecognizeSelector (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "doesNotRecognizeSelector:")
      [make_selector aSelector]) : unit)
  method forwardInvocation (anInvocation : [`NSInvocation] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "forwardInvocation:")
      [make_pointer_from_object anInvocation]) : unit)
  method methodSignatureForSelector (aSelector : selector) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "methodSignatureForSelector:")
      [make_selector aSelector]) : [`NSMethodSignature] Objc.id))
  method classForCoder =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classForCoder")[])
       : [`NSObject] Objc.id)
  method replacementObjectForCoder (aCoder : [`NSCoder] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "replacementObjectForCoder:")
      [make_pointer_from_object aCoder]) : [`NSObject] Objc.id)
  method awakeAfterUsingCoder (aDecoder : [`NSCoder] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "awakeAfterUsingCoder:")
      [make_pointer_from_object aDecoder]) : [`NSObject] Objc.id)
end
