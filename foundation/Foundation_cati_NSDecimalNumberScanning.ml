(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDecimalNumberScanning of NSScanner *)
class virtual methods_NSScanner = object (self)
  method virtual repr : [`NSObject] Objc.id
  method scanDecimal (dcm : [`NSDecimal] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scanDecimal:")
      [make_pointer_from_object dcm]) : bool)
end
