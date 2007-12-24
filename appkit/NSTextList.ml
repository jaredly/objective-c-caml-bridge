(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSTextList"
let _ = init()
(* ENUMS *)
let _NSTextListPrependEnclosingMarker = 1L


let make_NSObject_of_NSTextList (o : [`NSTextList] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSTextList *)
let class_NSTextList = object
   val repr = Classes.find "NSTextList"
   method _new = (Objc.objcnew repr : [`NSTextList] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTextList] nativeNSObject)
end
(* Encapsulation for native instance of NSTextList *)
class native_NSTextList = fun (o : [`NSTextList] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSTextList o) as super
   method initWithMarkerFormat  ~options:(mask : int ) (format : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg format "initWithMarkerFormat" make_pointer_from_object
       ++ Objc.arg mask "options" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method markerFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "markerFormat:")[]) : [`NSString] Objc.nativeNSObject)
   method listOptions =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "listOptions:")[]) : int)
   method markerForItemNumber (itemNum : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "markerForItemNumber:")[make_int itemNum]) : [`NSString] Objc.nativeNSObject)
end
