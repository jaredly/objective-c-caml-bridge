open Objc
open NSApplication
open NSPanel
open NSObject


external init : unit -> unit = "caml_init_NSPageLayout"
let _ = init()
(* Class object for NSPageLayout *)
let class_NSPageLayout = object
   val o = Classes.find "NSPageLayout"
   method _new = (Objc.objcnew o : [`NSPageLayout] nativeNSObject)
   method pageLayout =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pageLayout:")[]) : [`NSPageLayout] Objc.nativeNSObject)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
   method pageLayout =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pageLayout:")[]) : [`NSPageLayout] Objc.nativeNSObject)

*)
end
(* Encapsulation for native instance of NSPageLayout *)
class native_NSPageLayout = fun (o : [`NSPageLayout] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setAccessoryView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAccessoryView:")[make_pointer_from_object aView]) : unit)
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)
   method readPrintInfo =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "readPrintInfo:")[]) : unit)
   method writePrintInfo =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "writePrintInfo:")[]) : unit)
   method printInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "printInfo:")[]) : [`NSPrintInfo] Objc.nativeNSObject)
   method runModalWithPrintInfo (pInfo : [`NSPrintInfo] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "runModalWithPrintInfo:")[make_pointer_from_object pInfo]) : int)
   method runModal =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "runModal:")[]) : int)
   method beginSheetWithPrintInfo  ~modalForWindow:(docWindow : [`NSWindow] Objc.t ) ~delegate:(delegate : [`NSObject] Objc.t ) ~didEndSelector:(didEndSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (printInfo : [`NSPrintInfo] Objc.t) =
     let sel, args = (
       Objc.arg printInfo "beginSheetWithPrintInfo" make_pointer_from_object
       ++ Objc.arg docWindow "modalForWindow" make_pointer_from_object
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg didEndSelector "didEndSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
   method runModal =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "runModal:")[]) : int)

*)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
   method runModalWithPrintInfo (pInfo : [`NSPrintInfo] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "runModalWithPrintInfo:")[make_pointer_from_object pInfo]) : int)

*)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
   method setAccessoryView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAccessoryView:")[make_pointer_from_object aView]) : unit)

*)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
   method printInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "printInfo:")[]) : [`NSPrintInfo] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
   method readPrintInfo =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "readPrintInfo:")[]) : unit)

*)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
   method writePrintInfo =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "writePrintInfo:")[]) : unit)

*)
   method convertOldFactor  ~newFactor:(newFactor : [`float] Objc.t ) (oldFactor : [`float] Objc.t) =
     let sel, args = (
       Objc.arg oldFactor "convertOldFactor" make_pointer_from_object
       ++ Objc.arg newFactor "newFactor" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method pickedButton (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pickedButton:")[make_pointer_from_object sender]) : unit)
   method pickedOrientation (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pickedOrientation:")[make_pointer_from_object sender]) : unit)
   method pickedPaperSize (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pickedPaperSize:")[make_pointer_from_object sender]) : unit)
   method pickedUnits (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pickedUnits:")[make_pointer_from_object sender]) : unit)
end
(* Class object for NSApplication *)
let class_NSApplication = object
   val o = Classes.find "NSApplication"
   method _new = (Objc.objcnew o : [`NSApplication] nativeNSObject)
(* methods for category NSPageLayoutPanel *)
(* methods for category NSPageLayoutPanel *)
end
(* Encapsulation for native instance of NSApplication *)
class native_NSApplication = fun (o : [`NSApplication] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSPageLayoutPanel *)
   method runPageLayout (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "runPageLayout:")[make_pointer_from_object sender]) : unit)
(* methods for category NSPageLayoutPanel *)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
   method runPageLayout (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "runPageLayout:")[make_pointer_from_object sender]) : unit)

*)
end
