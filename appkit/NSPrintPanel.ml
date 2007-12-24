(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSPrintPanel"
let _ = init()
(* ENUMS *)
let _NSPPSaveButton = 3L
let _NSPPPreviewButton = 4L
let _NSFaxButton = 5L
let _NSPPTitleField = 40L
let _NSPPImageButton = 41L
let _NSPPNameTitle = 42L
let _NSPPNameField = 43L
let _NSPPNoteTitle = 44L
let _NSPPNoteField = 45L
let _NSPPStatusTitle = 46L
let _NSPPStatusField = 47L
let _NSPPCopiesField = 49L
let _NSPPPageChoiceMatrix = 50L
let _NSPPPageRangeFrom = 51L
let _NSPPPageRangeTo = 52L
let _NSPPScaleField = 53L
let _NSPPOptionsButton = 54L
let _NSPPPaperFeedButton = 55L
let _NSPPLayoutButton = 56L


let make_NSObject_of_NSPrintPanel (o : [`NSPrintPanel] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSPrintPanel *)
let class_NSPrintPanel = object
   val repr = Classes.find "NSPrintPanel"
   method _new = (Objc.objcnew repr : [`NSPrintPanel] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPrintPanel] nativeNSObject)
   method printPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "printPanel:")[]) : [`NSPrintPanel] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPrintPanel *)
class native_NSPrintPanel = fun (o : [`NSPrintPanel] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSPrintPanel o) as super
   method beginSheetWithPrintInfo  ~modalForWindow:(docWindow : [`NSWindow] Objc.t ) ~delegate:(delegate : [`NSObject] Objc.t ) ~didEndSelector:(didEndSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (printInfo : [`NSPrintInfo] Objc.t) =
     let sel, args = (
       Objc.arg printInfo "beginSheetWithPrintInfo" make_pointer_from_object
       ++ Objc.arg docWindow "modalForWindow" make_pointer_from_object
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg didEndSelector "didEndSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method runModal =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "runModal:")[]) : int)
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)
   method setAccessoryView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAccessoryView:")[make_pointer_from_object aView]) : unit)
   method setJobStyleHint (hint : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setJobStyleHint:")[make_pointer_from_object hint]) : unit)
   method jobStyleHint =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "jobStyleHint:")[]) : [`NSString] Objc.nativeNSObject)
   method updateFromPrintInfo =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "updateFromPrintInfo:")[]) : unit)
   method finalWritePrintInfo =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "finalWritePrintInfo:")[]) : unit)
   method pickedAllPages (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "pickedAllPages:")[make_pointer_from_object sender]) : unit)
   method pickedButton (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "pickedButton:")[make_pointer_from_object sender]) : unit)
   method pickedLayoutList (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "pickedLayoutList:")[make_pointer_from_object sender]) : unit)
end
