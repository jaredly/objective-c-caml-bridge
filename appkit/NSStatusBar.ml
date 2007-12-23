open Objc
open NSObject


external init : unit -> unit = "caml_init_NSStatusBar"
let _ = init()
(* Class object for NSStatusBar *)
let class_NSStatusBar = object
   val o = Classes.find "NSStatusBar"
   method _new = (Objc.objcnew o : [`NSStatusBar] nativeNSObject)
   method systemStatusBar =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "systemStatusBar:")[]) : [`NSStatusBar] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSStatusBar *)
class native_NSStatusBar = fun (o : [`NSStatusBar] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method statusItemWithLength (length : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "statusItemWithLength:")[make_float length]) : [`NSStatusItem] Objc.nativeNSObject)
   method removeStatusItem (item : [`NSStatusItem] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeStatusItem:")[make_pointer_from_object item]) : unit)
   method isVertical =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isVertical:")[]) : bool)
   method thickness =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "thickness:")[]) : float)
end
