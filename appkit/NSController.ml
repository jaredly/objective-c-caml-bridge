open Objc
open NSKeyValueBinding


external init : unit -> unit = "caml_init_NSController"
let _ = init()
(* Class object for NSController *)
let class_NSController = object
   val o = Classes.find "NSController"
   method _new = (Objc.objcnew o : [`NSController] nativeNSObject)
end
(* Encapsulation for native instance of NSController *)
class native_NSController = fun (o : [`NSController] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method objectDidBeginEditing (editor : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "objectDidBeginEditing:")[make_pointer_from_object editor]) : unit)
   method objectDidEndEditing (editor : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "objectDidEndEditing:")[make_pointer_from_object editor]) : unit)
   method discardEditing =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "discardEditing:")[]) : unit)
   method commitEditing =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "commitEditing:")[]) : bool)
   method commitEditingWithDelegate  ~didCommitSelector:(didCommitSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (delegate : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg delegate "commitEditingWithDelegate" make_pointer_from_object
       ++ Objc.arg didCommitSelector "didCommitSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method isEditing =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEditing:")[]) : bool)
end
