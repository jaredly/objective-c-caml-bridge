(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSAnyType = 0L
let _NSIntType = 1L
let _NSPositiveIntType = 2L
let _NSFloatType = 3L
let _NSPositiveFloatType = 4L
let _NSDoubleType = 6L
let _NSPositiveDoubleType = 7L
let _NSNoCellMask = 0L
let _NSContentsCellMask = 1L
let _NSPushInCellMask = 2L
let _NSChangeGrayCellMask = 4L
let _NSChangeBackgroundCellMask = 8L


class virtual methods = object
  inherit AppKit_cati_NSCellMixedState.methods_NSCell
  inherit AppKit_cati_NSCellAttributedStringMethods.methods_NSCell
  inherit AppKit_cati_NSKeyboardUI.methods_NSCell
  inherit Im_NSCell.methods
end

class t = fun (r :[`NSCell] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCell *)
let c = Classes.find "NSCell"
let _new()= (Objc.objcnew c : [`NSCell] id)
let alloc() = (Objc.objcalloc c : [`NSCell] id)
(* class methods for category NSCellMixedState of NSCell *)
(* class methods for category NSCellAttributedStringMethods of NSCell *)
(* class methods for category NSKeyboardUI of NSCell *)
let defaultFocusRingType () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "defaultFocusRingType")[])
       : int)
let prefersTrackingUntilMouseUp () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "prefersTrackingUntilMouseUp")[])
       : bool)
let defaultMenu () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultMenu")[])
       : [`NSMenu] Objc.id))
