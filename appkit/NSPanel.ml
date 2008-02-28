(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSAlertDefaultReturn = 1L
let _NSAlertAlternateReturn = 0L
let _NSAlertOtherReturn = -1L
let _NSAlertErrorReturn = -2L
let _NSOKButton = 1L
let _NSCancelButton = 0L
let _NSUtilityWindowMask = 16L
let _NSDocModalWindowMask = 64L
let _NSNonactivatingPanelMask = 128L


class t = fun (r :[`NSPanel] id) -> object
  inherit Im_NSPanel.methods
  method repr = r
end

(* Class object for NSPanel *)
let c = Classes.find "NSPanel"
let _new()= (Objc.objcnew c : [`NSPanel] id)
let alloc() = (Objc.objcalloc c : [`NSPanel] id)
