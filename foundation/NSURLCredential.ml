open Objc
open NSObject


external init : unit -> unit = "caml_init_NSURLCredential"
let _ = init()
(* Class object for NSURLCredential *)
let class_NSURLCredential = object
   val o = Classes.find "NSURLCredential"
   method _new = (Objc.objcnew o : [`NSURLCredential] nativeNSObject)
   method credentialWithUser  ~password:(password : [`NSString] Objc.t ) ~persistence:(persistence : int ) (user : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg user "credentialWithUser" make_pointer_from_object
       ++ Objc.arg password "password" make_pointer_from_object
       ++ Objc.arg persistence "persistence" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSURLCredential] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSURLCredential *)
class native_NSURLCredential = fun (o : [`NSURLCredential] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithUser  ~password:(password : [`NSString] Objc.t ) ~persistence:(persistence : int ) (user : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg user "initWithUser" make_pointer_from_object
       ++ Objc.arg password "password" make_pointer_from_object
       ++ Objc.arg persistence "persistence" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method user =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "user:")[]) : [`NSString] Objc.nativeNSObject)
   method password =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "password:")[]) : [`NSString] Objc.nativeNSObject)
   method hasPassword =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "hasPassword:")[]) : bool)
   method persistence =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "persistence:")[]) : int)
end
