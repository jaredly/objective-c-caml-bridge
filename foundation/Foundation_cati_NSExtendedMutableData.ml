(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedMutableData of NSMutableData *)
class virtual methods_NSMutableData = object (self)
  method virtual repr : [`NSObject] Objc.id
(*  UNSUPPORTED
  method appendBytes_length  (bytes : (*pointer to const void*) unsupported) (length : int) =
    let sel, args = (
      Objc.arg bytes "appendBytes" (*pointer to const void*) unsupported
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method appendData (other : [`NSData] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "appendData:")
      [make_pointer_from_object other]) : unit)
  method increaseLengthBy (extraLength : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "increaseLengthBy:")
      [make_int extraLength]) : unit)
(*  UNSUPPORTED
  method replaceBytesInRange_withBytes  (range : NSRange.t) (bytes : (*pointer to const void*) unsupported) =
    let sel, args = (
      Objc.arg range "replaceBytesInRange" make_range
      ++ Objc.arg bytes "withBytes" (*pointer to const void*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method resetBytesInRange (range : NSRange.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resetBytesInRange:")
      [make_range range]) : unit)
  method setData (data : [`NSData] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setData:")
      [make_pointer_from_object data]) : unit)
(*  UNSUPPORTED
  method replaceBytesInRange_withBytes_length  (range : NSRange.t) (replacementBytes : (*pointer to const void*) unsupported) (replacementLength : int) =
    let sel, args = (
      Objc.arg range "replaceBytesInRange" make_range
      ++ Objc.arg replacementBytes "withBytes" (*pointer to const void*) unsupported
      ++ Objc.arg replacementLength "length" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
end
