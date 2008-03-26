(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPrintPanel *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method beginSheetWithPrintInfo_modalForWindow_delegate_didEndSelector_contextInfo  (printInfo : [`NSPrintInfo] Objc.t) (docWindow : [`NSWindow] Objc.t) (delegate : [`NSObject] Objc.t) (didEndSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg printInfo "beginSheetWithPrintInfo" make_pointer_from_object
      ++ Objc.arg docWindow "modalForWindow" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didEndSelector "didEndSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method runModal =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "runModal")[])
       : int)
  method accessoryView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "accessoryView")[])
       : [`NSView] Objc.id))
  method setAccessoryView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAccessoryView:")
      [make_pointer_from_object aView]) : unit)
  method setJobStyleHint (hint : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setJobStyleHint:")
      [make_pointer_from_object hint]) : unit)
  method jobStyleHint =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "jobStyleHint")[])
       : [`NSString] Objc.id))
  method updateFromPrintInfo =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateFromPrintInfo")[])
       : unit)
  method finalWritePrintInfo =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "finalWritePrintInfo")[])
       : unit)
  method pickedAllPages (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "pickedAllPages:")
      [make_pointer_from_object sender]) : unit)
  method pickedButton (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "pickedButton:")
      [make_pointer_from_object sender]) : unit)
  method pickedLayoutList (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "pickedLayoutList:")
      [make_pointer_from_object sender]) : unit)
end
