(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSCursor.methods
end

class t = fun (r :[`NSCursor] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCursor *)
let c = Classes.find "NSCursor"
let _new()= (Objc.objcnew c : [`NSCursor] id)
let alloc() = (Objc.objcalloc c : [`NSCursor] id)
let currentCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentCursor")[])
       : [`NSCursor] Objc.id))
let arrowCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "arrowCursor")[])
       : [`NSCursor] Objc.id))
let _IBeamCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "IBeamCursor")[])
       : [`NSCursor] Objc.id))
let pointingHandCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "pointingHandCursor")[])
       : [`NSCursor] Objc.id))
let closedHandCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "closedHandCursor")[])
       : [`NSCursor] Objc.id))
let openHandCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "openHandCursor")[])
       : [`NSCursor] Objc.id))
let resizeLeftCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "resizeLeftCursor")[])
       : [`NSCursor] Objc.id))
let resizeRightCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "resizeRightCursor")[])
       : [`NSCursor] Objc.id))
let resizeLeftRightCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "resizeLeftRightCursor")[])
       : [`NSCursor] Objc.id))
let resizeUpCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "resizeUpCursor")[])
       : [`NSCursor] Objc.id))
let resizeDownCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "resizeDownCursor")[])
       : [`NSCursor] Objc.id))
let resizeUpDownCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "resizeUpDownCursor")[])
       : [`NSCursor] Objc.id))
let crosshairCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "crosshairCursor")[])
       : [`NSCursor] Objc.id))
let disappearingItemCursor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "disappearingItemCursor")[])
       : [`NSCursor] Objc.id))
let hide () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "hide")[])
       : unit)
let unhide () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "unhide")[])
       : unit)
let setHiddenUntilMouseMoves (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setHiddenUntilMouseMoves:")
      [make_bool flag]) : unit)
let pop () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "pop")[])
       : unit)
