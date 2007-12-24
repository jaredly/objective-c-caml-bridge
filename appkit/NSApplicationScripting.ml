(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSApplication


external init : unit -> unit = "caml_init_NSApplicationScripting"
let _ = init()
(* Class object for NSApplication *)
let class_NSApplication = object
   val repr = Classes.find "NSApplication"
   method _new = (Objc.objcnew repr : [`NSApplication] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSApplication] nativeNSObject)
(* methods for category NSScripting *)
end
(* Encapsulation for native instance of NSApplication *)
class native_NSApplication = fun (o : [`NSApplication] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSScripting *)
   method orderedDocuments =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "orderedDocuments:")[]) : [`NSArray] Objc.nativeNSObject)
   method orderedWindows =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "orderedWindows:")[]) : [`NSArray] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSApplicationScriptingDelegation *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSApplicationScriptingDelegation *)
   method application  ~delegateHandlesKey:(key : [`NSString] Objc.t ) (sender : [`NSApplication] Objc.t) =
     let sel, args = (
       Objc.arg sender "application" make_pointer_from_object
       ++ Objc.arg key "delegateHandlesKey" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
end
