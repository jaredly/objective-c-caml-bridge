(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSUserDefaultsController *)
class virtual methods = object (self)
  method virtual repr : [`NSUserDefaultsController] Objc.id
  method initWithDefaults  ~initialValues:(initialValues : [`NSDictionary] Objc.t ) (defaults : [`NSUserDefaults] Objc.t) =
    let sel, args = (
      Objc.arg defaults "initWithDefaults" make_pointer_from_object
      ++ Objc.arg initialValues "initialValues" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method defaults =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "defaults")[])
       : [`NSUserDefaults] Objc.id))
  method setInitialValues (initialValues : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setInitialValues:")
      [make_pointer_from_object initialValues]) : unit)
  method initialValues =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initialValues")[])
       : [`NSDictionary] Objc.id))
  method setAppliesImmediately (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAppliesImmediately:")
      [make_bool flag]) : unit)
  method appliesImmediately =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "appliesImmediately")[])
       : bool)
  method hasUnappliedChanges =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasUnappliedChanges")[])
       : bool)
  method values =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "values")[])
       : [`NSObject] Objc.id)
  method revert (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "revert:")
      [make_pointer_from_object sender]) : unit)
  method save (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "save:")
      [make_pointer_from_object sender]) : unit)
  method revertToInitialValues (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "revertToInitialValues:")
      [make_pointer_from_object sender]) : unit)
end
