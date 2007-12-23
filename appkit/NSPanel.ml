open Objc
open NSWindow


external init : unit -> unit = "caml_init_NSPanel"
let _ = init()
(* Class object for NSPanel *)
let class_NSPanel = object
   val o = Classes.find "NSPanel"
   method _new = (Objc.objcnew o : [`NSPanel] nativeNSObject)
end
(* Encapsulation for native instance of NSPanel *)
class native_NSPanel = fun (o : [`NSPanel] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method isFloatingPanel =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isFloatingPanel:")[]) : bool)
   method setFloatingPanel (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFloatingPanel:")[make_bool flag]) : unit)
   method becomesKeyOnlyIfNeeded =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "becomesKeyOnlyIfNeeded:")[]) : bool)
   method setBecomesKeyOnlyIfNeeded (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBecomesKeyOnlyIfNeeded:")[make_bool flag]) : unit)
   method worksWhenModal =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "worksWhenModal:")[]) : bool)
   method setWorksWhenModal (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setWorksWhenModal:")[make_bool flag]) : unit)
end
