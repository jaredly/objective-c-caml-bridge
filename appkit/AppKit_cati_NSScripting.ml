(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSScripting of NSDocument *)
class virtual methods_NSDocument = object (self)
  method virtual repr : [`NSObject] Objc.id
  method lastComponentOfFileName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "lastComponentOfFileName")[])
       : [`NSString] Objc.id))
  method setLastComponentOfFileName (str : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLastComponentOfFileName:")
      [make_pointer_from_object str]) : unit)
  method handleSaveScriptCommand (command : [`NSScriptCommand] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "handleSaveScriptCommand:")
      [make_pointer_from_object command]) : [`NSObject] Objc.id)
  method handleCloseScriptCommand (command : [`NSCloseCommand] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "handleCloseScriptCommand:")
      [make_pointer_from_object command]) : [`NSObject] Objc.id)
  method handlePrintScriptCommand (command : [`NSScriptCommand] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "handlePrintScriptCommand:")
      [make_pointer_from_object command]) : [`NSObject] Objc.id)
  method objectSpecifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectSpecifier")[])
       : [`NSScriptObjectSpecifier] Objc.id))
end
(* instance methods for category NSScripting of NSApplication *)
class virtual methods_NSApplication = object (self)
  method virtual repr : [`NSObject] Objc.id
  method orderedDocuments =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "orderedDocuments")[])
       : [`NSArray] Objc.id))
  method orderedWindows =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "orderedWindows")[])
       : [`NSArray] Objc.id))
end
(* instance methods for category NSScripting of NSWindow *)
class virtual methods_NSWindow = object (self)
  method virtual repr : [`NSObject] Objc.id
  method hasCloseBox =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasCloseBox")[])
       : bool)
  method hasTitleBar =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasTitleBar")[])
       : bool)
  method isFloatingPanel =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFloatingPanel")[])
       : bool)
  method isMiniaturizable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isMiniaturizable")[])
       : bool)
  method isModalPanel =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isModalPanel")[])
       : bool)
  method isResizable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isResizable")[])
       : bool)
  method isZoomable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isZoomable")[])
       : bool)
  method orderedIndex =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "orderedIndex")[])
       : int)
  method setIsMiniaturized (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIsMiniaturized:")
      [make_bool flag]) : unit)
  method setIsVisible (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIsVisible:")
      [make_bool flag]) : unit)
  method setIsZoomed (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIsZoomed:")
      [make_bool flag]) : unit)
  method setOrderedIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOrderedIndex:")
      [make_int index]) : unit)
  method handleCloseScriptCommand (command : [`NSCloseCommand] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "handleCloseScriptCommand:")
      [make_pointer_from_object command]) : [`NSObject] Objc.id)
  method handlePrintScriptCommand (command : [`NSScriptCommand] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "handlePrintScriptCommand:")
      [make_pointer_from_object command]) : [`NSObject] Objc.id)
  method handleSaveScriptCommand (command : [`NSScriptCommand] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "handleSaveScriptCommand:")
      [make_pointer_from_object command]) : [`NSObject] Objc.id)
end
