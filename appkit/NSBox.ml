(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSView


external init : unit -> unit = "caml_init_NSBox"
let _ = init()
let make_NSView_of_NSBox (o : [`NSBox] nativeNSObject) = (Obj.magic o : [`NSView] nativeNSObject)
(* Class object for NSBox *)
let class_NSBox = object
   val repr = Classes.find "NSBox"
   method _new = (Objc.objcnew repr : [`NSBox] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSBox] nativeNSObject)
(* methods for category NSKeyboardUI *)
end
(* Encapsulation for native instance of NSBox *)
class native_NSBox = fun (o : [`NSBox] nativeNSObject) -> object (self)
   inherit native_NSView (make_NSView_of_NSBox o) as super
(* methods for category NSKeyboardUI *)
   method setTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleWithMnemonic:")[make_pointer_from_object stringWithAmpersand]) : unit)
(*  UNSUPPORTED
   method borderType =
     ((*NSBorderType*) unsupported (Objc.invoke (*NSBorderType*) Objc.tag_unsupported repr (Selector.find "borderType:")[]) : (*NSBorderType*) unsupported)

*)
   method titlePosition =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "titlePosition:")[]) : int)
(*  UNSUPPORTED
   method setBorderType (aType : (*NSBorderType*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBorderType:")[(*NSBorderType*) unsupported aType]) : unit)

*)
   method setBoxType (boxType : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBoxType:")[make_int boxType]) : unit)
   method boxType =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "boxType:")[]) : int)
   method setTitlePosition (aPosition : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitlePosition:")[make_int aPosition]) : unit)
   method title =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "title:")[]) : [`NSString] Objc.nativeNSObject)
   method setTitle (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitle:")[make_pointer_from_object aString]) : unit)
   method titleFont =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "titleFont:")[]) : [`NSFont] Objc.nativeNSObject)
   method setTitleFont (fontObj : [`NSFont] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleFont:")[make_pointer_from_object fontObj]) : unit)
(*  UNSUPPORTED
   method borderRect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "borderRect:")[]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method titleRect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "titleRect:")[]) : (*NSRect*) unsupported)

*)
   method titleCell =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "titleCell:")[]) : [`NSObject] Objc.nativeNSObject)
   method sizeToFit =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "sizeToFit:")[]) : unit)
(*  UNSUPPORTED
   method contentViewMargins =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "contentViewMargins:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setContentViewMargins (offsetSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContentViewMargins:")[(*NSSize*) unsupported offsetSize]) : unit)

*)
(*  UNSUPPORTED
   method setFrameFromContentFrame (contentFrame : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFrameFromContentFrame:")[(*NSRect*) unsupported contentFrame]) : unit)

*)
   method contentView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "contentView:")[]) : [`NSObject] Objc.nativeNSObject)
   method setContentView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContentView:")[make_pointer_from_object aView]) : unit)
end
