(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCustomImageRep *)
class virtual methods = object (self)
  method virtual repr : [`NSCustomImageRep] Objc.id
  method initWithDrawSelector  ~delegate:(anObject : [`NSObject] Objc.t ) (aMethod : selector) =
    let sel, args = (
      Objc.arg aMethod "initWithDrawSelector" make_selector
      ++ Objc.arg anObject "delegate" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method drawSelector =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "drawSelector")[])
       : selector)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
end
