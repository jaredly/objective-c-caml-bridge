open Objc
open NSScriptCommand


external init : unit -> unit = "caml_init_NSScriptStandardSuiteCommands"
let _ = init()
(* Class object for NSSetCommand *)
let class_NSSetCommand = object
   val o = Classes.find "NSSetCommand"
   method _new = (Objc.objcnew o : [`NSSetCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSSetCommand *)
class native_NSSetCommand = fun (o : [`NSSetCommand] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setReceiversSpecifier:")[make_pointer_from_object receiversRef]) : unit)
   method keySpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "keySpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
end
(* Class object for NSQuitCommand *)
let class_NSQuitCommand = object
   val o = Classes.find "NSQuitCommand"
   method _new = (Objc.objcnew o : [`NSQuitCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSQuitCommand *)
class native_NSQuitCommand = fun (o : [`NSQuitCommand] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method saveOptions =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "saveOptions:")[]) : int)
end
(* Class object for NSMoveCommand *)
let class_NSMoveCommand = object
   val o = Classes.find "NSMoveCommand"
   method _new = (Objc.objcnew o : [`NSMoveCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSMoveCommand *)
class native_NSMoveCommand = fun (o : [`NSMoveCommand] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setReceiversSpecifier:")[make_pointer_from_object receiversRef]) : unit)
   method keySpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "keySpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
end
(* Class object for NSCreateCommand *)
let class_NSCreateCommand = object
   val o = Classes.find "NSCreateCommand"
   method _new = (Objc.objcnew o : [`NSCreateCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSCreateCommand *)
class native_NSCreateCommand = fun (o : [`NSCreateCommand] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method createClassDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "createClassDescription:")[]) : [`NSScriptClassDescription] Objc.nativeNSObject)
   method resolvedKeyDictionary =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "resolvedKeyDictionary:")[]) : [`NSDictionary] Objc.nativeNSObject)
end
(* Class object for NSCloseCommand *)
let class_NSCloseCommand = object
   val o = Classes.find "NSCloseCommand"
   method _new = (Objc.objcnew o : [`NSCloseCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSCloseCommand *)
class native_NSCloseCommand = fun (o : [`NSCloseCommand] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method saveOptions =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "saveOptions:")[]) : int)
end
(* Class object for NSCloneCommand *)
let class_NSCloneCommand = object
   val o = Classes.find "NSCloneCommand"
   method _new = (Objc.objcnew o : [`NSCloneCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSCloneCommand *)
class native_NSCloneCommand = fun (o : [`NSCloneCommand] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setReceiversSpecifier:")[make_pointer_from_object receiversRef]) : unit)
   method keySpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "keySpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
end
(* Class object for NSExistsCommand *)
let class_NSExistsCommand = object
   val o = Classes.find "NSExistsCommand"
   method _new = (Objc.objcnew o : [`NSExistsCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSExistsCommand *)
class native_NSExistsCommand = fun (o : [`NSExistsCommand] nativeNSObject) -> object (self)
   val o = o
   method o = o
end
(* Class object for NSDeleteCommand *)
let class_NSDeleteCommand = object
   val o = Classes.find "NSDeleteCommand"
   method _new = (Objc.objcnew o : [`NSDeleteCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSDeleteCommand *)
class native_NSDeleteCommand = fun (o : [`NSDeleteCommand] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setReceiversSpecifier:")[make_pointer_from_object receiversRef]) : unit)
   method keySpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "keySpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
end
(* Class object for NSCountCommand *)
let class_NSCountCommand = object
   val o = Classes.find "NSCountCommand"
   method _new = (Objc.objcnew o : [`NSCountCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSCountCommand *)
class native_NSCountCommand = fun (o : [`NSCountCommand] nativeNSObject) -> object (self)
   val o = o
   method o = o
end
(* Class object for NSGetCommand *)
let class_NSGetCommand = object
   val o = Classes.find "NSGetCommand"
   method _new = (Objc.objcnew o : [`NSGetCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSGetCommand *)
class native_NSGetCommand = fun (o : [`NSGetCommand] nativeNSObject) -> object (self)
   val o = o
   method o = o
end
