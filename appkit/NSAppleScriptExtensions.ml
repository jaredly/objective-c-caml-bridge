open Objc
open NSAppleScript


external init : unit -> unit = "caml_init_NSAppleScriptExtensions"
let _ = init()
(* Class object for NSAppleScript *)
let class_NSAppleScript = object
   val o = Classes.find "NSAppleScript"
   method _new = (Objc.objcnew o : [`NSAppleScript] nativeNSObject)
(* methods for category NSExtensions *)
end
(* Encapsulation for native instance of NSAppleScript *)
class native_NSAppleScript = fun (o : [`NSAppleScript] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSExtensions *)
   method richTextSource =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "richTextSource:")[]) : [`NSAttributedString] Objc.nativeNSObject)
end
