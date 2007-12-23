open Objc
open NSObject


external init : unit -> unit = "caml_init_NSPrintPanel"
let _ = init()
(* Class object for NSPrintPanel *)
let class_NSPrintPanel = object
   val o = Classes.find "NSPrintPanel"
   method _new = (Objc.objcnew o : [`NSPrintPanel] nativeNSObject)
   method printPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "printPanel:")[]) : [`NSPrintPanel] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPrintPanel *)
class native_NSPrintPanel = fun (o : [`NSPrintPanel] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method beginSheetWithPrintInfo  ~modalForWindow:(docWindow : [`NSWindow] Objc.t ) ~delegate:(delegate : [`NSObject] Objc.t ) ~didEndSelector:(didEndSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (printInfo : [`NSPrintInfo] Objc.t) =
     let sel, args = (
       Objc.arg printInfo "beginSheetWithPrintInfo" make_pointer_from_object
       ++ Objc.arg docWindow "modalForWindow" make_pointer_from_object
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg didEndSelector "didEndSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method runModal =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "runModal:")[]) : int)
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)
   method setAccessoryView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAccessoryView:")[make_pointer_from_object aView]) : unit)
   method setJobStyleHint (hint : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setJobStyleHint:")[make_pointer_from_object hint]) : unit)
   method jobStyleHint =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "jobStyleHint:")[]) : [`NSString] Objc.nativeNSObject)
   method updateFromPrintInfo =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "updateFromPrintInfo:")[]) : unit)
   method finalWritePrintInfo =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "finalWritePrintInfo:")[]) : unit)
   method pickedAllPages (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pickedAllPages:")[make_pointer_from_object sender]) : unit)
   method pickedButton (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pickedButton:")[make_pointer_from_object sender]) : unit)
   method pickedLayoutList (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pickedLayoutList:")[make_pointer_from_object sender]) : unit)
end
