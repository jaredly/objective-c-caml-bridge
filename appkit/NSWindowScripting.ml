(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSWindow


external init : unit -> unit = "caml_init_NSWindowScripting"
let _ = init()
(* Class object for NSWindow *)
let class_NSWindow = object
   val repr = Classes.find "NSWindow"
   method _new = (Objc.objcnew repr : [`NSWindow] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSWindow] nativeNSObject)
(* methods for category NSScripting *)
end
(* Encapsulation for native instance of NSWindow *)
class native_NSWindow = fun (o : [`NSWindow] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSScripting *)
   method hasCloseBox =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasCloseBox:")[]) : bool)
   method hasTitleBar =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasTitleBar:")[]) : bool)
   method isFloatingPanel =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isFloatingPanel:")[]) : bool)
   method isMiniaturizable =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isMiniaturizable:")[]) : bool)
   method isModalPanel =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isModalPanel:")[]) : bool)
   method isResizable =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isResizable:")[]) : bool)
   method isZoomable =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isZoomable:")[]) : bool)
   method orderedIndex =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "orderedIndex:")[]) : int)
   method setIsMiniaturized (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIsMiniaturized:")[make_bool flag]) : unit)
   method setIsVisible (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIsVisible:")[make_bool flag]) : unit)
   method setIsZoomed (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIsZoomed:")[make_bool flag]) : unit)
   method setOrderedIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setOrderedIndex:")[make_int index]) : unit)
   method handleCloseScriptCommand (command : [`NSCloseCommand] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "handleCloseScriptCommand:")[make_pointer_from_object command]) : [`NSObject] Objc.nativeNSObject)
   method handlePrintScriptCommand (command : [`NSScriptCommand] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "handlePrintScriptCommand:")[make_pointer_from_object command]) : [`NSObject] Objc.nativeNSObject)
   method handleSaveScriptCommand (command : [`NSScriptCommand] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "handleSaveScriptCommand:")[make_pointer_from_object command]) : [`NSObject] Objc.nativeNSObject)
end
