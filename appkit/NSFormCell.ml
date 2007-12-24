(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSActionCell


external init : unit -> unit = "caml_init_NSFormCell"
let _ = init()
let make_NSActionCell_of_NSFormCell (o : [`NSFormCell] nativeNSObject) = (Obj.magic o : [`NSActionCell] nativeNSObject)
(* Class object for NSFormCell *)
let class_NSFormCell = object
   val repr = Classes.find "NSFormCell"
   method _new = (Objc.objcnew repr : [`NSFormCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSFormCell] nativeNSObject)
(* methods for category NSFormCellAttributedStringMethods *)
(* methods for category NSKeyboardUI *)
end
(* Encapsulation for native instance of NSFormCell *)
class native_NSFormCell = fun (o : [`NSFormCell] nativeNSObject) -> object (self)
   inherit native_NSActionCell (make_NSActionCell_of_NSFormCell o) as super
(* methods for category NSFormCellAttributedStringMethods *)
   method attributedTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attributedTitle:")[]) : [`NSAttributedString] Objc.nativeNSObject)
   method setAttributedTitle (obj : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAttributedTitle:")[make_pointer_from_object obj]) : unit)
(* methods for category NSKeyboardUI *)
   method setTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleWithMnemonic:")[make_pointer_from_object stringWithAmpersand]) : unit)
   method initTextCell (aString : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initTextCell:")[make_pointer_from_object aString]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method titleWidth (aSize : (*NSSize*) unsupported) =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "titleWidth:")[(*NSSize*) unsupported aSize]) : float)

*)
   (* skipping selector titleWidth *)
   method setTitleWidth (width : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleWidth:")[make_float width]) : unit)
   method title =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "title:")[]) : [`NSString] Objc.nativeNSObject)
   method setTitle (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitle:")[make_pointer_from_object aString]) : unit)
   method titleFont =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "titleFont:")[]) : [`NSFont] Objc.nativeNSObject)
   method setTitleFont (fontObj : [`NSFont] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleFont:")[make_pointer_from_object fontObj]) : unit)
(*  UNSUPPORTED
   method titleAlignment =
     ((*NSTextAlignment*) unsupported (Objc.invoke (*NSTextAlignment*) Objc.tag_unsupported repr (Selector.find "titleAlignment:")[]) : (*NSTextAlignment*) unsupported)

*)
(*  UNSUPPORTED
   method setTitleAlignment (mode : (*NSTextAlignment*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleAlignment:")[(*NSTextAlignment*) unsupported mode]) : unit)

*)
   method isOpaque =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isOpaque:")[]) : bool)
   method setPlaceholderString (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPlaceholderString:")[make_pointer_from_object string]) : unit)
   method placeholderString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "placeholderString:")[]) : [`NSString] Objc.nativeNSObject)
   method setPlaceholderAttributedString (string : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPlaceholderAttributedString:")[make_pointer_from_object string]) : unit)
   method placeholderAttributedString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "placeholderAttributedString:")[]) : [`NSAttributedString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method titleBaseWritingDirection =
     ((*NSWritingDirection*) unsupported (Objc.invoke (*NSWritingDirection*) Objc.tag_unsupported repr (Selector.find "titleBaseWritingDirection:")[]) : (*NSWritingDirection*) unsupported)

*)
(*  UNSUPPORTED
   method setTitleBaseWritingDirection (writingDirection : (*NSWritingDirection*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleBaseWritingDirection:")[(*NSWritingDirection*) unsupported writingDirection]) : unit)

*)
end
