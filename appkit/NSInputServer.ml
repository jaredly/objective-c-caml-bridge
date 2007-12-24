(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry
open NSRange


external init : unit -> unit = "caml_init_NSInputServer"
let _ = init()
let make_NSObject_of_NSInputServer (o : [`NSInputServer] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSInputServer *)
let class_NSInputServer = object
   val repr = Classes.find "NSInputServer"
   method _new = (Objc.objcnew repr : [`NSInputServer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSInputServer] nativeNSObject)
end
(* Encapsulation for native instance of NSInputServer *)
class native_NSInputServer = fun (o : [`NSInputServer] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSInputServer o) as super
   method initWithDelegate  ~name:(name : [`NSString] Objc.t ) (aDelegate : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg aDelegate "initWithDelegate" make_pointer_from_object
       ++ Objc.arg name "name" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
end
