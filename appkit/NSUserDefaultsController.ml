open Objc
open NSController


external init : unit -> unit = "caml_init_NSUserDefaultsController"
let _ = init()
(* Class object for NSUserDefaultsController *)
let class_NSUserDefaultsController = object
   val o = Classes.find "NSUserDefaultsController"
   method _new = (Objc.objcnew o : [`NSUserDefaultsController] nativeNSObject)
   method sharedUserDefaultsController =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedUserDefaultsController:")[]) : [`NSUserDefaultsController] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSUserDefaultsController *)
class native_NSUserDefaultsController = fun (o : [`NSUserDefaultsController] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithDefaults  ~initialValues:(initialValues : [`NSDictionary] Objc.t ) (defaults : [`NSUserDefaults] Objc.t) =
     let sel, args = (
       Objc.arg defaults "initWithDefaults" make_pointer_from_object
       ++ Objc.arg initialValues "initialValues" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method defaults =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaults:")[]) : [`NSUserDefaults] Objc.nativeNSObject)
   method setInitialValues (initialValues : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setInitialValues:")[make_pointer_from_object initialValues]) : unit)
   method initialValues =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initialValues:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setAppliesImmediately (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAppliesImmediately:")[make_bool flag]) : unit)
   method appliesImmediately =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "appliesImmediately:")[]) : bool)
   method hasUnappliedChanges =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "hasUnappliedChanges:")[]) : bool)
   method values =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "values:")[]) : [`NSObject] Objc.nativeNSObject)
   method revert (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "revert:")[make_pointer_from_object sender]) : unit)
   method save (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "save:")[make_pointer_from_object sender]) : unit)
   method revertToInitialValues (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "revertToInitialValues:")[make_pointer_from_object sender]) : unit)
end
