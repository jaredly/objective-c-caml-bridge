(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFormCell *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initTextCell (aString : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initTextCell:")
      [make_pointer_from_object aString]) : [`NSObject] Objc.id)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method titleWidth (aSize : NSSize.t) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "titleWidth:")
      [make_size aSize]) : float)

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method titleWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "titleWidth")[])
       : float)

*)
  method setTitleWidth (width : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleWidth:")
      [make_float width]) : unit)
  method title =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "title")[])
       : [`NSString] Objc.id))
  method setTitle (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitle:")
      [make_pointer_from_object aString]) : unit)
  method titleFont =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "titleFont")[])
       : [`NSFont] Objc.id))
  method setTitleFont (fontObj : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleFont:")
      [make_pointer_from_object fontObj]) : unit)
  method titleAlignment =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "titleAlignment")[])
       : int)
  method setTitleAlignment (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleAlignment:")
      [make_int mode]) : unit)
  method isOpaque =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isOpaque")[])
       : bool)
  method setPlaceholderString (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPlaceholderString:")
      [make_pointer_from_object string]) : unit)
  method placeholderString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "placeholderString")[])
       : [`NSString] Objc.id))
  method setPlaceholderAttributedString (string : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPlaceholderAttributedString:")
      [make_pointer_from_object string]) : unit)
  method placeholderAttributedString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "placeholderAttributedString")[])
       : [`NSAttributedString] Objc.id))
  method titleBaseWritingDirection =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "titleBaseWritingDirection")[])
       : int)
  method setTitleBaseWritingDirection (writingDirection : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleBaseWritingDirection:")
      [make_int writingDirection]) : unit)
end
