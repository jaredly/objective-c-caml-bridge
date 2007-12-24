(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSColorPicking


external init : unit -> unit = "caml_init_NSColorPicker"
let _ = init()
let make_NSObject_of_NSColorPicker (o : [`NSColorPicker] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSColorPicker *)
let class_NSColorPicker = object
   val repr = Classes.find "NSColorPicker"
   method _new = (Objc.objcnew repr : [`NSColorPicker] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSColorPicker] nativeNSObject)
end
(* Encapsulation for native instance of NSColorPicker *)
class native_NSColorPicker = fun (o : [`NSColorPicker] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSColorPicker o) as super
   method initWithPickerMask  ~colorPanel:(owningColorPanel : [`NSColorPanel] Objc.t ) (mask : int) =
     let sel, args = (
       Objc.arg mask "initWithPickerMask" make_int
       ++ Objc.arg owningColorPanel "colorPanel" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method colorPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "colorPanel:")[]) : [`NSColorPanel] Objc.nativeNSObject)
   method provideNewButtonImage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "provideNewButtonImage:")[]) : [`NSImage] Objc.nativeNSObject)
   method insertNewButtonImage  ~l_in:(buttonCell : [`NSButtonCell] Objc.t ) (newButtonImage : [`NSImage] Objc.t) =
     let sel, args = (
       Objc.arg newButtonImage "insertNewButtonImage" make_pointer_from_object
       ++ Objc.arg buttonCell "l_in" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method viewSizeChanged (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "viewSizeChanged:")[make_pointer_from_object sender]) : unit)
   method attachColorList (colorList : [`NSColorList] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "attachColorList:")[make_pointer_from_object colorList]) : unit)
   method detachColorList (colorList : [`NSColorList] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "detachColorList:")[make_pointer_from_object colorList]) : unit)
   method setMode (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMode:")[make_int mode]) : unit)
end
