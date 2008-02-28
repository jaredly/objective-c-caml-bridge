(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

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


class t = fun (r :[`NSPrintPanel] id) -> object
  inherit Im_NSPrintPanel.methods
  method repr = r
end

(* Class object for NSPrintPanel *)
let c = Classes.find "NSPrintPanel"
let _new()= (Objc.objcnew c : [`NSPrintPanel] id)
let alloc() = (Objc.objcalloc c : [`NSPrintPanel] id)
let printPanel () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "printPanel")[])
       : [`NSPrintPanel] Objc.id))
