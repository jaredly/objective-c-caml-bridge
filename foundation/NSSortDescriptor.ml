open Objc
open NSArray


external init : unit -> unit = "caml_init_NSSortDescriptor"
let _ = init()
(* Class object for NSMutableArray *)
let class_NSMutableArray = object
   val o = Classes.find "NSMutableArray"
   method _new = (Objc.objcnew o : [`NSMutableArray] nativeNSObject)
(* methods for category NSSortDescriptorSorting *)
end
(* Encapsulation for native instance of NSMutableArray *)
class native_NSMutableArray = fun (o : [`NSMutableArray] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSSortDescriptorSorting *)
   method sortUsingDescriptors (sortDescriptors : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "sortUsingDescriptors:")[make_pointer_from_object sortDescriptors]) : unit)
end
(* Class object for NSSortDescriptor *)
let class_NSSortDescriptor = object
   val o = Classes.find "NSSortDescriptor"
   method _new = (Objc.objcnew o : [`NSSortDescriptor] nativeNSObject)
end
(* Encapsulation for native instance of NSSortDescriptor *)
class native_NSSortDescriptor = fun (o : [`NSSortDescriptor] nativeNSObject) -> object (self)
   val o = o
   method o = o
   (* skipping selector initWithKey:ascending *)
   method initWithKey  ~ascending:(ascending : bool ) ?selector:(selector : selector option) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "initWithKey" make_pointer_from_object
       ++ Objc.arg ascending "ascending" make_bool
       ++ Objc.opt_arg selector "selector" make_selector
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method key =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "key:")[]) : [`NSString] Objc.nativeNSObject)
   method ascending =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "ascending:")[]) : bool)
   method selector =
     (get_selector (Objc.invoke Objc.tag_selector o (Selector.find "selector:")[]) : selector)
   method compareObject  ~toObject:(object2 : [`NSObject] Objc.t ) (object1 : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg object1 "compareObject" make_pointer_from_object
       ++ Objc.arg object2 "toObject" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int o (Selector.find_list sel) args) : int)
   method reversedSortDescriptor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "reversedSortDescriptor:")[]) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSArray *)
let class_NSArray = object
   val o = Classes.find "NSArray"
   method _new = (Objc.objcnew o : [`NSArray] nativeNSObject)
(* methods for category NSSortDescriptorSorting *)
end
(* Encapsulation for native instance of NSArray *)
class native_NSArray = fun (o : [`NSArray] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSSortDescriptorSorting *)
   method sortedArrayUsingDescriptors (sortDescriptors : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sortedArrayUsingDescriptors:")[make_pointer_from_object sortDescriptors]) : [`NSArray] Objc.nativeNSObject)
end
