(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSStatusBar"
let _ = init()
let make_NSObject_of_NSStatusBar (o : [`NSStatusBar] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSStatusBar *)
let class_NSStatusBar = object
   val repr = Classes.find "NSStatusBar"
   method _new = (Objc.objcnew repr : [`NSStatusBar] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSStatusBar] nativeNSObject)
   method systemStatusBar =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "systemStatusBar:")[]) : [`NSStatusBar] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSStatusBar *)
class native_NSStatusBar = fun (o : [`NSStatusBar] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSStatusBar o) as super
   method statusItemWithLength (length : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "statusItemWithLength:")[make_float length]) : [`NSStatusItem] Objc.nativeNSObject)
   method removeStatusItem (item : [`NSStatusItem] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeStatusItem:")[make_pointer_from_object item]) : unit)
   method isVertical =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isVertical:")[]) : bool)
   method thickness =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "thickness:")[]) : float)
end
