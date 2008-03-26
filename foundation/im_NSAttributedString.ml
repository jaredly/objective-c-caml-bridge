(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSAttributedString *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method string =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "string")[])
       : [`NSString] Objc.id))
(*  UNSUPPORTED
  method attributesAtIndex_effectiveRange  (location : int) (range : (*NSRangePointer*) unsupported) =
    let sel, args = (
      Objc.arg location "attributesAtIndex" make_int
      ++ Objc.arg range "effectiveRange" (*NSRangePointer*) unsupported
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDictionary] Objc.id))

*)
end
