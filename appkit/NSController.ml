(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSKeyValueBinding


external init : unit -> unit = "caml_init_NSController"
let _ = init()
let make_NSObject_of_NSController (o : [`NSController] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSController *)
let class_NSController = object
   val repr = Classes.find "NSController"
   method _new = (Objc.objcnew repr : [`NSController] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSController] nativeNSObject)
end
(* Encapsulation for native instance of NSController *)
class native_NSController = fun (o : [`NSController] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSController o) as super
   method objectDidBeginEditing (editor : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "objectDidBeginEditing:")[make_pointer_from_object editor]) : unit)
   method objectDidEndEditing (editor : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "objectDidEndEditing:")[make_pointer_from_object editor]) : unit)
   method discardEditing =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "discardEditing:")[]) : unit)
   method commitEditing =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "commitEditing:")[]) : bool)
   method commitEditingWithDelegate  ~didCommitSelector:(didCommitSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (delegate : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg delegate "commitEditingWithDelegate" make_pointer_from_object
       ++ Objc.arg didCommitSelector "didCommitSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method isEditing =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEditing:")[]) : bool)
end
