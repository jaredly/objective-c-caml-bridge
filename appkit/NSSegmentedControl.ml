(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSControl


external init : unit -> unit = "caml_init_NSSegmentedControl"
let _ = init()
let make_NSControl_of_NSSegmentedControl (o : [`NSSegmentedControl] nativeNSObject) = (Obj.magic o : [`NSControl] nativeNSObject)
(* Class object for NSSegmentedControl *)
let class_NSSegmentedControl = object
   val repr = Classes.find "NSSegmentedControl"
   method _new = (Objc.objcnew repr : [`NSSegmentedControl] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSegmentedControl] nativeNSObject)
end
(* Encapsulation for native instance of NSSegmentedControl *)
class native_NSSegmentedControl = fun (o : [`NSSegmentedControl] nativeNSObject) -> object (self)
   inherit native_NSControl (make_NSControl_of_NSSegmentedControl o) as super
   method setSegmentCount (count : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSegmentCount:")[make_int count]) : unit)
   method segmentCount =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "segmentCount:")[]) : int)
   method setSelectedSegment (selectedSegment : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSelectedSegment:")[make_int selectedSegment]) : unit)
   method selectedSegment =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "selectedSegment:")[]) : int)
   method selectSegmentWithTag (tag : int) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "selectSegmentWithTag:")[make_int tag]) : bool)
   method setWidth  ~forSegment:(segment : int ) (width : float) =
     let sel, args = (
       Objc.arg width "setWidth" make_float
       ++ Objc.arg segment "forSegment" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method widthForSegment (segment : int) =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "widthForSegment:")[make_int segment]) : float)
   method setImage  ~forSegment:(segment : int ) (image : [`NSImage] Objc.t) =
     let sel, args = (
       Objc.arg image "setImage" make_pointer_from_object
       ++ Objc.arg segment "forSegment" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method imageForSegment (segment : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "imageForSegment:")[make_int segment]) : [`NSImage] Objc.nativeNSObject)
   method setLabel  ~forSegment:(segment : int ) (label : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg label "setLabel" make_pointer_from_object
       ++ Objc.arg segment "forSegment" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method labelForSegment (segment : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "labelForSegment:")[make_int segment]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method setMenu  ~forSegment:(segment : int ) (menu : [`NSMenu] Objc.t) =
     let sel, args = (
       Objc.arg menu "setMenu" make_pointer_from_object
       ++ Objc.arg segment "forSegment" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method menuForSegment (segment : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "menuForSegment:")[make_int segment]) : [`NSMenu] Objc.nativeNSObject)
   method setSelected  ~forSegment:(segment : int ) (selected : bool) =
     let sel, args = (
       Objc.arg selected "setSelected" make_bool
       ++ Objc.arg segment "forSegment" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method isSelectedForSegment (segment : int) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isSelectedForSegment:")[make_int segment]) : bool)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method setEnabled  ~forSegment:(segment : int ) (enabled : bool) =
     let sel, args = (
       Objc.arg enabled "setEnabled" make_bool
       ++ Objc.arg segment "forSegment" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method isEnabledForSegment (segment : int) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEnabledForSegment:")[make_int segment]) : bool)
end
