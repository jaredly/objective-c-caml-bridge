(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSNibConnector"
let _ = init()
let make_NSObject_of_NSNibConnector (o : [`NSNibConnector] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSNibConnector *)
let class_NSNibConnector = object
   val repr = Classes.find "NSNibConnector"
   method _new = (Objc.objcnew repr : [`NSNibConnector] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSNibConnector] nativeNSObject)
end
(* Encapsulation for native instance of NSNibConnector *)
class native_NSNibConnector = fun (o : [`NSNibConnector] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSNibConnector o) as super
   method source =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "source:")[]) : [`NSObject] Objc.nativeNSObject)
   method setSource (source : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSource:")[make_pointer_from_object source]) : unit)
   method destination =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "destination:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDestination (destination : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDestination:")[make_pointer_from_object destination]) : unit)
   method label =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "label:")[]) : [`NSString] Objc.nativeNSObject)
   method setLabel (label : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLabel:")[make_pointer_from_object label]) : unit)
   method replaceObject  ~withObject:(newObject : [`NSObject] Objc.t ) (oldObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg oldObject "replaceObject" make_pointer_from_object
       ++ Objc.arg newObject "withObject" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method establishConnection =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "establishConnection:")[]) : unit)
end
