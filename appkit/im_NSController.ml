(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSController *)
class virtual methods = object (self)
  method virtual repr : [`NSController] Objc.id
  method objectDidBeginEditing (editor : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "objectDidBeginEditing:")
      [make_pointer_from_object editor]) : unit)
  method objectDidEndEditing (editor : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "objectDidEndEditing:")
      [make_pointer_from_object editor]) : unit)
  method discardEditing =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "discardEditing")[])
       : unit)
  method commitEditing =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "commitEditing")[])
       : bool)
  method commitEditingWithDelegate  ~didCommitSelector:(didCommitSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (delegate : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg delegate "commitEditingWithDelegate" make_pointer_from_object
      ++ Objc.arg didCommitSelector "didCommitSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method isEditing =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEditing")[])
       : bool)
end
