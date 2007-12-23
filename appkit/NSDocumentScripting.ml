open Objc
open NSDocument


external init : unit -> unit = "caml_init_NSDocumentScripting"
let _ = init()
(* Class object for NSDocument *)
let class_NSDocument = object
   val o = Classes.find "NSDocument"
   method _new = (Objc.objcnew o : [`NSDocument] nativeNSObject)
(* methods for category NSScripting *)
end
(* Encapsulation for native instance of NSDocument *)
class native_NSDocument = fun (o : [`NSDocument] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSScripting *)
   method lastComponentOfFileName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "lastComponentOfFileName:")[]) : [`NSString] Objc.nativeNSObject)
   method setLastComponentOfFileName (str : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLastComponentOfFileName:")[make_pointer_from_object str]) : unit)
   method handleSaveScriptCommand (command : [`NSScriptCommand] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "handleSaveScriptCommand:")[make_pointer_from_object command]) : [`NSObject] Objc.nativeNSObject)
   method handleCloseScriptCommand (command : [`NSCloseCommand] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "handleCloseScriptCommand:")[make_pointer_from_object command]) : [`NSObject] Objc.nativeNSObject)
   method handlePrintScriptCommand (command : [`NSScriptCommand] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "handlePrintScriptCommand:")[make_pointer_from_object command]) : [`NSObject] Objc.nativeNSObject)
   method objectSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectSpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
end
