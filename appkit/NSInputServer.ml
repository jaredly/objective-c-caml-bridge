open Objc
open NSObject
open NSGeometry
open NSRange


external init : unit -> unit = "caml_init_NSInputServer"
let _ = init()
(* Class object for NSInputServer *)
let class_NSInputServer = object
   val o = Classes.find "NSInputServer"
   method _new = (Objc.objcnew o : [`NSInputServer] nativeNSObject)
end
(* Encapsulation for native instance of NSInputServer *)
class native_NSInputServer = fun (o : [`NSInputServer] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithDelegate  ~name:(name : [`NSString] Objc.t ) (aDelegate : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg aDelegate "initWithDelegate" make_pointer_from_object
       ++ Objc.arg name "name" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
end
