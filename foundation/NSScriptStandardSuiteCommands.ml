(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSScriptCommand


external init : unit -> unit = "caml_init_NSScriptStandardSuiteCommands"
let _ = init()
let make_NSScriptCommand_of_NSCloneCommand (o : [`NSCloneCommand] nativeNSObject) = (Obj.magic o : [`NSScriptCommand] nativeNSObject)
(* Class object for NSCloneCommand *)
let class_NSCloneCommand = object
   val repr = Classes.find "NSCloneCommand"
   method _new = (Objc.objcnew repr : [`NSCloneCommand] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSCloneCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSCloneCommand *)
class native_NSCloneCommand = fun (o : [`NSCloneCommand] nativeNSObject) -> object (self)
   inherit native_NSScriptCommand (make_NSScriptCommand_of_NSCloneCommand o) as super
   method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setReceiversSpecifier:")[make_pointer_from_object receiversRef]) : unit)
   method keySpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "keySpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
end
let make_NSScriptCommand_of_NSCloseCommand (o : [`NSCloseCommand] nativeNSObject) = (Obj.magic o : [`NSScriptCommand] nativeNSObject)
(* Class object for NSCloseCommand *)
let class_NSCloseCommand = object
   val repr = Classes.find "NSCloseCommand"
   method _new = (Objc.objcnew repr : [`NSCloseCommand] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSCloseCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSCloseCommand *)
class native_NSCloseCommand = fun (o : [`NSCloseCommand] nativeNSObject) -> object (self)
   inherit native_NSScriptCommand (make_NSScriptCommand_of_NSCloseCommand o) as super
   method saveOptions =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "saveOptions:")[]) : int)
end
let make_NSScriptCommand_of_NSCountCommand (o : [`NSCountCommand] nativeNSObject) = (Obj.magic o : [`NSScriptCommand] nativeNSObject)
(* Class object for NSCountCommand *)
let class_NSCountCommand = object
   val repr = Classes.find "NSCountCommand"
   method _new = (Objc.objcnew repr : [`NSCountCommand] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSCountCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSCountCommand *)
class native_NSCountCommand = fun (o : [`NSCountCommand] nativeNSObject) -> object (self)
   inherit native_NSScriptCommand (make_NSScriptCommand_of_NSCountCommand o) as super
end
let make_NSScriptCommand_of_NSCreateCommand (o : [`NSCreateCommand] nativeNSObject) = (Obj.magic o : [`NSScriptCommand] nativeNSObject)
(* Class object for NSCreateCommand *)
let class_NSCreateCommand = object
   val repr = Classes.find "NSCreateCommand"
   method _new = (Objc.objcnew repr : [`NSCreateCommand] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSCreateCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSCreateCommand *)
class native_NSCreateCommand = fun (o : [`NSCreateCommand] nativeNSObject) -> object (self)
   inherit native_NSScriptCommand (make_NSScriptCommand_of_NSCreateCommand o) as super
   method createClassDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "createClassDescription:")[]) : [`NSScriptClassDescription] Objc.nativeNSObject)
   method resolvedKeyDictionary =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resolvedKeyDictionary:")[]) : [`NSDictionary] Objc.nativeNSObject)
end
let make_NSScriptCommand_of_NSDeleteCommand (o : [`NSDeleteCommand] nativeNSObject) = (Obj.magic o : [`NSScriptCommand] nativeNSObject)
(* Class object for NSDeleteCommand *)
let class_NSDeleteCommand = object
   val repr = Classes.find "NSDeleteCommand"
   method _new = (Objc.objcnew repr : [`NSDeleteCommand] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSDeleteCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSDeleteCommand *)
class native_NSDeleteCommand = fun (o : [`NSDeleteCommand] nativeNSObject) -> object (self)
   inherit native_NSScriptCommand (make_NSScriptCommand_of_NSDeleteCommand o) as super
   method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setReceiversSpecifier:")[make_pointer_from_object receiversRef]) : unit)
   method keySpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "keySpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
end
let make_NSScriptCommand_of_NSExistsCommand (o : [`NSExistsCommand] nativeNSObject) = (Obj.magic o : [`NSScriptCommand] nativeNSObject)
(* Class object for NSExistsCommand *)
let class_NSExistsCommand = object
   val repr = Classes.find "NSExistsCommand"
   method _new = (Objc.objcnew repr : [`NSExistsCommand] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSExistsCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSExistsCommand *)
class native_NSExistsCommand = fun (o : [`NSExistsCommand] nativeNSObject) -> object (self)
   inherit native_NSScriptCommand (make_NSScriptCommand_of_NSExistsCommand o) as super
end
let make_NSScriptCommand_of_NSGetCommand (o : [`NSGetCommand] nativeNSObject) = (Obj.magic o : [`NSScriptCommand] nativeNSObject)
(* Class object for NSGetCommand *)
let class_NSGetCommand = object
   val repr = Classes.find "NSGetCommand"
   method _new = (Objc.objcnew repr : [`NSGetCommand] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSGetCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSGetCommand *)
class native_NSGetCommand = fun (o : [`NSGetCommand] nativeNSObject) -> object (self)
   inherit native_NSScriptCommand (make_NSScriptCommand_of_NSGetCommand o) as super
end
let make_NSScriptCommand_of_NSMoveCommand (o : [`NSMoveCommand] nativeNSObject) = (Obj.magic o : [`NSScriptCommand] nativeNSObject)
(* Class object for NSMoveCommand *)
let class_NSMoveCommand = object
   val repr = Classes.find "NSMoveCommand"
   method _new = (Objc.objcnew repr : [`NSMoveCommand] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMoveCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSMoveCommand *)
class native_NSMoveCommand = fun (o : [`NSMoveCommand] nativeNSObject) -> object (self)
   inherit native_NSScriptCommand (make_NSScriptCommand_of_NSMoveCommand o) as super
   method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setReceiversSpecifier:")[make_pointer_from_object receiversRef]) : unit)
   method keySpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "keySpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
end
let make_NSScriptCommand_of_NSQuitCommand (o : [`NSQuitCommand] nativeNSObject) = (Obj.magic o : [`NSScriptCommand] nativeNSObject)
(* Class object for NSQuitCommand *)
let class_NSQuitCommand = object
   val repr = Classes.find "NSQuitCommand"
   method _new = (Objc.objcnew repr : [`NSQuitCommand] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSQuitCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSQuitCommand *)
class native_NSQuitCommand = fun (o : [`NSQuitCommand] nativeNSObject) -> object (self)
   inherit native_NSScriptCommand (make_NSScriptCommand_of_NSQuitCommand o) as super
   method saveOptions =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "saveOptions:")[]) : int)
end
let make_NSScriptCommand_of_NSSetCommand (o : [`NSSetCommand] nativeNSObject) = (Obj.magic o : [`NSScriptCommand] nativeNSObject)
(* Class object for NSSetCommand *)
let class_NSSetCommand = object
   val repr = Classes.find "NSSetCommand"
   method _new = (Objc.objcnew repr : [`NSSetCommand] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSetCommand] nativeNSObject)
end
(* Encapsulation for native instance of NSSetCommand *)
class native_NSSetCommand = fun (o : [`NSSetCommand] nativeNSObject) -> object (self)
   inherit native_NSScriptCommand (make_NSScriptCommand_of_NSSetCommand o) as super
   method setReceiversSpecifier (receiversRef : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setReceiversSpecifier:")[make_pointer_from_object receiversRef]) : unit)
   method keySpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "keySpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
end
