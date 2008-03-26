(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSProxy *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method forwardInvocation (invocation : [`NSInvocation] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "forwardInvocation:")
      [make_pointer_from_object invocation]) : unit)
  method methodSignatureForSelector (sel : selector) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "methodSignatureForSelector:")
      [make_selector sel]) : [`NSMethodSignature] Objc.id))
  method dealloc =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "dealloc")[])
       : unit)
  method description =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "description")[])
       : [`NSString] Objc.id))
end
