(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSController


external init : unit -> unit = "caml_init_NSUserDefaultsController"
let _ = init()
let make_NSController_of_NSUserDefaultsController (o : [`NSUserDefaultsController] nativeNSObject) = (Obj.magic o : [`NSController] nativeNSObject)
(* Class object for NSUserDefaultsController *)
let class_NSUserDefaultsController = object
   val repr = Classes.find "NSUserDefaultsController"
   method _new = (Objc.objcnew repr : [`NSUserDefaultsController] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSUserDefaultsController] nativeNSObject)
   method sharedUserDefaultsController =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedUserDefaultsController:")[]) : [`NSUserDefaultsController] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSUserDefaultsController *)
class native_NSUserDefaultsController = fun (o : [`NSUserDefaultsController] nativeNSObject) -> object (self)
   inherit native_NSController (make_NSController_of_NSUserDefaultsController o) as super
   method initWithDefaults  ~initialValues:(initialValues : [`NSDictionary] Objc.t ) (defaults : [`NSUserDefaults] Objc.t) =
     let sel, args = (
       Objc.arg defaults "initWithDefaults" make_pointer_from_object
       ++ Objc.arg initialValues "initialValues" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method defaults =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaults:")[]) : [`NSUserDefaults] Objc.nativeNSObject)
   method setInitialValues (initialValues : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setInitialValues:")[make_pointer_from_object initialValues]) : unit)
   method initialValues =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initialValues:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setAppliesImmediately (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAppliesImmediately:")[make_bool flag]) : unit)
   method appliesImmediately =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "appliesImmediately:")[]) : bool)
   method hasUnappliedChanges =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasUnappliedChanges:")[]) : bool)
   method values =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "values:")[]) : [`NSObject] Objc.nativeNSObject)
   method revert (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "revert:")[make_pointer_from_object sender]) : unit)
   method save (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "save:")[make_pointer_from_object sender]) : unit)
   method revertToInitialValues (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "revertToInitialValues:")[make_pointer_from_object sender]) : unit)
end
