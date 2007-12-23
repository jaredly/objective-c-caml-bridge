open Objc
open NSWindow


external init : unit -> unit = "caml_init_NSWindowScripting"
let _ = init()
(* Class object for NSWindow *)
let class_NSWindow = object
   val o = Classes.find "NSWindow"
   method _new = (Objc.objcnew o : [`NSWindow] nativeNSObject)
(* methods for category NSScripting *)
end
(* Encapsulation for native instance of NSWindow *)
class native_NSWindow = fun (o : [`NSWindow] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSScripting *)
   method hasCloseBox =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "hasCloseBox:")[]) : bool)
   method hasTitleBar =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "hasTitleBar:")[]) : bool)
   method isFloatingPanel =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isFloatingPanel:")[]) : bool)
   method isMiniaturizable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isMiniaturizable:")[]) : bool)
   method isModalPanel =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isModalPanel:")[]) : bool)
   method isResizable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isResizable:")[]) : bool)
   method isZoomable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isZoomable:")[]) : bool)
   method orderedIndex =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "orderedIndex:")[]) : int)
   method setIsMiniaturized (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setIsMiniaturized:")[make_bool flag]) : unit)
   method setIsVisible (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setIsVisible:")[make_bool flag]) : unit)
   method setIsZoomed (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setIsZoomed:")[make_bool flag]) : unit)
   method setOrderedIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setOrderedIndex:")[make_int index]) : unit)
   method handleCloseScriptCommand (command : [`NSCloseCommand] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "handleCloseScriptCommand:")[make_pointer_from_object command]) : [`NSObject] Objc.nativeNSObject)
   method handlePrintScriptCommand (command : [`NSScriptCommand] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "handlePrintScriptCommand:")[make_pointer_from_object command]) : [`NSObject] Objc.nativeNSObject)
   method handleSaveScriptCommand (command : [`NSScriptCommand] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "handleSaveScriptCommand:")[make_pointer_from_object command]) : [`NSObject] Objc.nativeNSObject)
end
