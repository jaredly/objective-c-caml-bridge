(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFormCell *)
class virtual methods = object (self)
  method virtual repr : [`NSFormCell] Objc.id
  method initTextCell (aString : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initTextCell:")
      [make_pointer_from_object aString]) : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method titleWidth (aSize : (*NSSize*) unsupported) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "titleWidth:")
      [(*NSSize*) unsupported aSize]) : float)

*)
  (* skipping selector titleWidth *)
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
(*  UNSUPPORTED
  method titleAlignment =
    ((*NSTextAlignment*) unsupported (Objc.invoke (*NSTextAlignment*) Objc.tag_unsupported self#repr (Selector.find "titleAlignment")[])
       : (*NSTextAlignment*) unsupported)

*)
(*  UNSUPPORTED
  method setTitleAlignment (mode : (*NSTextAlignment*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleAlignment:")
      [(*NSTextAlignment*) unsupported mode]) : unit)

*)
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
(*  UNSUPPORTED
  method titleBaseWritingDirection =
    ((*NSWritingDirection*) unsupported (Objc.invoke (*NSWritingDirection*) Objc.tag_unsupported self#repr (Selector.find "titleBaseWritingDirection")[])
       : (*NSWritingDirection*) unsupported)

*)
(*  UNSUPPORTED
  method setTitleBaseWritingDirection (writingDirection : (*NSWritingDirection*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleBaseWritingDirection:")
      [(*NSWritingDirection*) unsupported writingDirection]) : unit)

*)
end
