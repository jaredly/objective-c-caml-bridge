(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSArray


external init : unit -> unit = "caml_init_NSSortDescriptor"
let _ = init()
let make_NSObject_of_NSSortDescriptor (o : [`NSSortDescriptor] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSSortDescriptor *)
let class_NSSortDescriptor = object
   val repr = Classes.find "NSSortDescriptor"
   method _new = (Objc.objcnew repr : [`NSSortDescriptor] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSortDescriptor] nativeNSObject)
end
(* Encapsulation for native instance of NSSortDescriptor *)
class native_NSSortDescriptor = fun (o : [`NSSortDescriptor] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSSortDescriptor o) as super
   (* skipping selector initWithKey:ascending *)
   method initWithKey  ~ascending:(ascending : bool ) ?selector:(selector : selector option) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "initWithKey" make_pointer_from_object
       ++ Objc.arg ascending "ascending" make_bool
       ++ Objc.opt_arg selector "selector" make_selector
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method key =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "key:")[]) : [`NSString] Objc.nativeNSObject)
   method ascending =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "ascending:")[]) : bool)
   method selector =
     (get_selector (Objc.invoke Objc.tag_selector repr (Selector.find "selector:")[]) : selector)
   method compareObject  ~toObject:(object2 : [`NSObject] Objc.t ) (object1 : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg object1 "compareObject" make_pointer_from_object
       ++ Objc.arg object2 "toObject" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
   method reversedSortDescriptor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "reversedSortDescriptor:")[]) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSArray *)
let class_NSArray = object
   val repr = Classes.find "NSArray"
   method _new = (Objc.objcnew repr : [`NSArray] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSArray] nativeNSObject)
(* methods for category NSSortDescriptorSorting *)
end
(* Encapsulation for native instance of NSArray *)
class native_NSArray = fun (o : [`NSArray] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSSortDescriptorSorting *)
   method sortedArrayUsingDescriptors (sortDescriptors : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sortedArrayUsingDescriptors:")[make_pointer_from_object sortDescriptors]) : [`NSArray] Objc.nativeNSObject)
end
(* Class object for NSMutableArray *)
let class_NSMutableArray = object
   val repr = Classes.find "NSMutableArray"
   method _new = (Objc.objcnew repr : [`NSMutableArray] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMutableArray] nativeNSObject)
(* methods for category NSSortDescriptorSorting *)
end
(* Encapsulation for native instance of NSMutableArray *)
class native_NSMutableArray = fun (o : [`NSMutableArray] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSSortDescriptorSorting *)
   method sortUsingDescriptors (sortDescriptors : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "sortUsingDescriptors:")[make_pointer_from_object sortDescriptors]) : unit)
end
