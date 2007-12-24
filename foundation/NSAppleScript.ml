(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSAppleScript"
let _ = init()
let make_NSObject_of_NSAppleScript (o : [`NSAppleScript] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSAppleScript *)
let class_NSAppleScript = object
   val repr = Classes.find "NSAppleScript"
   method _new = (Objc.objcnew repr : [`NSAppleScript] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSAppleScript] nativeNSObject)
end
(* Encapsulation for native instance of NSAppleScript *)
class native_NSAppleScript = fun (o : [`NSAppleScript] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSAppleScript o) as super
(*  UNSUPPORTED
   method initWithContentsOfURL  ~error:(errorInfo : (*pointer to pointer to NSDictionary*) unsupported ) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "initWithContentsOfURL" make_pointer_from_object
       ++ Objc.arg errorInfo "error" (*pointer to pointer to NSDictionary*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method initWithSource (source : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithSource:")[make_pointer_from_object source]) : [`NSObject] Objc.nativeNSObject)
   method source =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "source:")[]) : [`NSString] Objc.nativeNSObject)
   method isCompiled =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isCompiled:")[]) : bool)
(*  UNSUPPORTED
   method compileAndReturnError (errorInfo : (*pointer to pointer to NSDictionary*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "compileAndReturnError:")[(*pointer to pointer to NSDictionary*) unsupported errorInfo]) : bool)

*)
(*  UNSUPPORTED
   method executeAndReturnError (errorInfo : (*pointer to pointer to NSDictionary*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "executeAndReturnError:")[(*pointer to pointer to NSDictionary*) unsupported errorInfo]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method executeAppleEvent  ~error:(errorInfo : (*pointer to pointer to NSDictionary*) unsupported ) (event : [`NSAppleEventDescriptor] Objc.t) =
     let sel, args = (
       Objc.arg event "executeAppleEvent" make_pointer_from_object
       ++ Objc.arg errorInfo "error" (*pointer to pointer to NSDictionary*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSAppleEventDescriptor] Objc.nativeNSObject)

*)
end
