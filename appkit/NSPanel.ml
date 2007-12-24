(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSWindow


external init : unit -> unit = "caml_init_NSPanel"
let _ = init()
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


let make_NSWindow_of_NSPanel (o : [`NSPanel] nativeNSObject) = (Obj.magic o : [`NSWindow] nativeNSObject)
(* Class object for NSPanel *)
let class_NSPanel = object
   val repr = Classes.find "NSPanel"
   method _new = (Objc.objcnew repr : [`NSPanel] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPanel] nativeNSObject)
end
(* Encapsulation for native instance of NSPanel *)
class native_NSPanel = fun (o : [`NSPanel] nativeNSObject) -> object (self)
   inherit native_NSWindow (make_NSWindow_of_NSPanel o) as super
   method isFloatingPanel =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isFloatingPanel:")[]) : bool)
   method setFloatingPanel (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFloatingPanel:")[make_bool flag]) : unit)
   method becomesKeyOnlyIfNeeded =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "becomesKeyOnlyIfNeeded:")[]) : bool)
   method setBecomesKeyOnlyIfNeeded (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBecomesKeyOnlyIfNeeded:")[make_bool flag]) : unit)
   method worksWhenModal =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "worksWhenModal:")[]) : bool)
   method setWorksWhenModal (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setWorksWhenModal:")[make_bool flag]) : unit)
end
