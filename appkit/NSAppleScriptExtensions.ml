(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSAppleScript


external init : unit -> unit = "caml_init_NSAppleScriptExtensions"
let _ = init()
(* Class object for NSAppleScript *)
let class_NSAppleScript = object
   val repr = Classes.find "NSAppleScript"
   method _new = (Objc.objcnew repr : [`NSAppleScript] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSAppleScript] nativeNSObject)
(* methods for category NSExtensions *)
end
(* Encapsulation for native instance of NSAppleScript *)
class native_NSAppleScript = fun (o : [`NSAppleScript] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSExtensions *)
   method richTextSource =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "richTextSource:")[]) : [`NSAttributedString] Objc.nativeNSObject)
end
