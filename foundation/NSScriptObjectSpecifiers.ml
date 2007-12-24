(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSScriptObjectSpecifiers"
let _ = init()
(* ENUMS *)
let _NSNoSpecifierError = 0L
let _NSNoTopLevelContainersSpecifierError = 1L
let _NSContainerSpecifierError = 2L
let _NSUnknownKeySpecifierError = 3L
let _NSInvalidIndexSpecifierError = 4L
let _NSInternalSpecifierError = 5L
let _NSOperationNotSupportedForKeySpecifierError = 6L


let make_NSObject_of_NSScriptObjectSpecifier (o : [`NSScriptObjectSpecifier] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSScriptObjectSpecifier *)
let class_NSScriptObjectSpecifier = object
   val repr = Classes.find "NSScriptObjectSpecifier"
   method _new = (Objc.objcnew repr : [`NSScriptObjectSpecifier] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSScriptObjectSpecifier] nativeNSObject)
end
(* Encapsulation for native instance of NSScriptObjectSpecifier *)
class native_NSScriptObjectSpecifier = fun (o : [`NSScriptObjectSpecifier] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSScriptObjectSpecifier o) as super
   method initWithContainerSpecifier  ~key:(property : [`NSString] Objc.t ) (container : [`NSScriptObjectSpecifier] Objc.t) =
     let sel, args = (
       Objc.arg container "initWithContainerSpecifier" make_pointer_from_object
       ++ Objc.arg property "key" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithContainerClassDescription  ~containerSpecifier:(container : [`NSScriptObjectSpecifier] Objc.t ) ~key:(property : [`NSString] Objc.t ) (classDesc : [`NSScriptClassDescription] Objc.t) =
     let sel, args = (
       Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
       ++ Objc.arg container "containerSpecifier" make_pointer_from_object
       ++ Objc.arg property "key" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method childSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "childSpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
   method setChildSpecifier (child : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setChildSpecifier:")[make_pointer_from_object child]) : unit)
   method containerSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "containerSpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
   method setContainerSpecifier (subRef : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContainerSpecifier:")[make_pointer_from_object subRef]) : unit)
   method containerIsObjectBeingTested =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "containerIsObjectBeingTested:")[]) : bool)
   method setContainerIsObjectBeingTested (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContainerIsObjectBeingTested:")[make_bool flag]) : unit)
   method containerIsRangeContainerObject =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "containerIsRangeContainerObject:")[]) : bool)
   method setContainerIsRangeContainerObject (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContainerIsRangeContainerObject:")[make_bool flag]) : unit)
   method key =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "key:")[]) : [`NSString] Objc.nativeNSObject)
   method setKey (key : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setKey:")[make_pointer_from_object key]) : unit)
   method containerClassDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "containerClassDescription:")[]) : [`NSScriptClassDescription] Objc.nativeNSObject)
   method setContainerClassDescription (classDesc : [`NSScriptClassDescription] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContainerClassDescription:")[make_pointer_from_object classDesc]) : unit)
   method keyClassDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "keyClassDescription:")[]) : [`NSScriptClassDescription] Objc.nativeNSObject)
   method indicesOfObjectsByEvaluatingWithContainer  ~count:(count : [`int] Objc.t ) (container : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg container "indicesOfObjectsByEvaluatingWithContainer" make_pointer_from_object
       ++ Objc.arg count "count" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`int] Objc.nativeNSObject)
   method objectsByEvaluatingWithContainers (containers : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectsByEvaluatingWithContainers:")[make_pointer_from_object containers]) : [`NSObject] Objc.nativeNSObject)
   method objectsByEvaluatingSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectsByEvaluatingSpecifier:")[]) : [`NSObject] Objc.nativeNSObject)
   method evaluationErrorNumber =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "evaluationErrorNumber:")[]) : int)
   method setEvaluationErrorNumber (error : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEvaluationErrorNumber:")[make_int error]) : unit)
   method evaluationErrorSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "evaluationErrorSpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSScriptObjectSpecifiers *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSScriptObjectSpecifiers *)
   method objectSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectSpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
   method indicesOfObjectsByEvaluatingObjectSpecifier (specifier : [`NSScriptObjectSpecifier] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "indicesOfObjectsByEvaluatingObjectSpecifier:")[make_pointer_from_object specifier]) : [`NSArray] Objc.nativeNSObject)
end
let make_NSScriptObjectSpecifier_of_NSIndexSpecifier (o : [`NSIndexSpecifier] nativeNSObject) = (Obj.magic o : [`NSScriptObjectSpecifier] nativeNSObject)
(* Class object for NSIndexSpecifier *)
let class_NSIndexSpecifier = object
   val repr = Classes.find "NSIndexSpecifier"
   method _new = (Objc.objcnew repr : [`NSIndexSpecifier] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSIndexSpecifier] nativeNSObject)
end
(* Encapsulation for native instance of NSIndexSpecifier *)
class native_NSIndexSpecifier = fun (o : [`NSIndexSpecifier] nativeNSObject) -> object (self)
   inherit native_NSScriptObjectSpecifier (make_NSScriptObjectSpecifier_of_NSIndexSpecifier o) as super
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method initWithContainerClassDescription  ~containerSpecifier:(container : [`NSScriptObjectSpecifier] Objc.t ) ~key:(property : [`NSString] Objc.t ) ~index:(index : int ) (classDesc : [`NSScriptClassDescription] Objc.t) =
     let sel, args = (
       Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
       ++ Objc.arg container "containerSpecifier" make_pointer_from_object
       ++ Objc.arg property "key" make_pointer_from_object
       ++ Objc.arg index "index" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method index =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "index:")[]) : int)
   method setIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIndex:")[make_int index]) : unit)
end
let make_NSScriptObjectSpecifier_of_NSMiddleSpecifier (o : [`NSMiddleSpecifier] nativeNSObject) = (Obj.magic o : [`NSScriptObjectSpecifier] nativeNSObject)
(* Class object for NSMiddleSpecifier *)
let class_NSMiddleSpecifier = object
   val repr = Classes.find "NSMiddleSpecifier"
   method _new = (Objc.objcnew repr : [`NSMiddleSpecifier] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMiddleSpecifier] nativeNSObject)
end
(* Encapsulation for native instance of NSMiddleSpecifier *)
class native_NSMiddleSpecifier = fun (o : [`NSMiddleSpecifier] nativeNSObject) -> object (self)
   inherit native_NSScriptObjectSpecifier (make_NSScriptObjectSpecifier_of_NSMiddleSpecifier o) as super
end
let make_NSScriptObjectSpecifier_of_NSNameSpecifier (o : [`NSNameSpecifier] nativeNSObject) = (Obj.magic o : [`NSScriptObjectSpecifier] nativeNSObject)
(* Class object for NSNameSpecifier *)
let class_NSNameSpecifier = object
   val repr = Classes.find "NSNameSpecifier"
   method _new = (Objc.objcnew repr : [`NSNameSpecifier] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSNameSpecifier] nativeNSObject)
end
(* Encapsulation for native instance of NSNameSpecifier *)
class native_NSNameSpecifier = fun (o : [`NSNameSpecifier] nativeNSObject) -> object (self)
   inherit native_NSScriptObjectSpecifier (make_NSScriptObjectSpecifier_of_NSNameSpecifier o) as super
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method initWithContainerClassDescription  ~containerSpecifier:(container : [`NSScriptObjectSpecifier] Objc.t ) ~key:(property : [`NSString] Objc.t ) ~name:(name : [`NSString] Objc.t ) (classDesc : [`NSScriptClassDescription] Objc.t) =
     let sel, args = (
       Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
       ++ Objc.arg container "containerSpecifier" make_pointer_from_object
       ++ Objc.arg property "key" make_pointer_from_object
       ++ Objc.arg name "name" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method setName (name : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setName:")[make_pointer_from_object name]) : unit)
end
let make_NSObject_of_NSPositionalSpecifier (o : [`NSPositionalSpecifier] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSPositionalSpecifier *)
let class_NSPositionalSpecifier = object
   val repr = Classes.find "NSPositionalSpecifier"
   method _new = (Objc.objcnew repr : [`NSPositionalSpecifier] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPositionalSpecifier] nativeNSObject)
end
(* Encapsulation for native instance of NSPositionalSpecifier *)
class native_NSPositionalSpecifier = fun (o : [`NSPositionalSpecifier] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSPositionalSpecifier o) as super
   method initWithPosition  ~objectSpecifier:(specifier : [`NSScriptObjectSpecifier] Objc.t ) (position : int) =
     let sel, args = (
       Objc.arg position "initWithPosition" make_int
       ++ Objc.arg specifier "objectSpecifier" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method setInsertionClassDescription (classDescription : [`NSScriptClassDescription] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setInsertionClassDescription:")[make_pointer_from_object classDescription]) : unit)
   method evaluate =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "evaluate:")[]) : unit)
   method insertionContainer =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "insertionContainer:")[]) : [`NSObject] Objc.nativeNSObject)
   method insertionKey =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "insertionKey:")[]) : [`NSString] Objc.nativeNSObject)
   method insertionIndex =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "insertionIndex:")[]) : int)
   method insertionReplaces =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "insertionReplaces:")[]) : bool)
end
let make_NSScriptObjectSpecifier_of_NSPropertySpecifier (o : [`NSPropertySpecifier] nativeNSObject) = (Obj.magic o : [`NSScriptObjectSpecifier] nativeNSObject)
(* Class object for NSPropertySpecifier *)
let class_NSPropertySpecifier = object
   val repr = Classes.find "NSPropertySpecifier"
   method _new = (Objc.objcnew repr : [`NSPropertySpecifier] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPropertySpecifier] nativeNSObject)
end
(* Encapsulation for native instance of NSPropertySpecifier *)
class native_NSPropertySpecifier = fun (o : [`NSPropertySpecifier] nativeNSObject) -> object (self)
   inherit native_NSScriptObjectSpecifier (make_NSScriptObjectSpecifier_of_NSPropertySpecifier o) as super
end
let make_NSScriptObjectSpecifier_of_NSRandomSpecifier (o : [`NSRandomSpecifier] nativeNSObject) = (Obj.magic o : [`NSScriptObjectSpecifier] nativeNSObject)
(* Class object for NSRandomSpecifier *)
let class_NSRandomSpecifier = object
   val repr = Classes.find "NSRandomSpecifier"
   method _new = (Objc.objcnew repr : [`NSRandomSpecifier] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSRandomSpecifier] nativeNSObject)
end
(* Encapsulation for native instance of NSRandomSpecifier *)
class native_NSRandomSpecifier = fun (o : [`NSRandomSpecifier] nativeNSObject) -> object (self)
   inherit native_NSScriptObjectSpecifier (make_NSScriptObjectSpecifier_of_NSRandomSpecifier o) as super
end
let make_NSScriptObjectSpecifier_of_NSRangeSpecifier (o : [`NSRangeSpecifier] nativeNSObject) = (Obj.magic o : [`NSScriptObjectSpecifier] nativeNSObject)
(* Class object for NSRangeSpecifier *)
let class_NSRangeSpecifier = object
   val repr = Classes.find "NSRangeSpecifier"
   method _new = (Objc.objcnew repr : [`NSRangeSpecifier] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSRangeSpecifier] nativeNSObject)
end
(* Encapsulation for native instance of NSRangeSpecifier *)
class native_NSRangeSpecifier = fun (o : [`NSRangeSpecifier] nativeNSObject) -> object (self)
   inherit native_NSScriptObjectSpecifier (make_NSScriptObjectSpecifier_of_NSRangeSpecifier o) as super
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method initWithContainerClassDescription  ~containerSpecifier:(container : [`NSScriptObjectSpecifier] Objc.t ) ~key:(property : [`NSString] Objc.t ) ~startSpecifier:(startSpec : [`NSScriptObjectSpecifier] Objc.t ) ~endSpecifier:(endSpec : [`NSScriptObjectSpecifier] Objc.t ) (classDesc : [`NSScriptClassDescription] Objc.t) =
     let sel, args = (
       Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
       ++ Objc.arg container "containerSpecifier" make_pointer_from_object
       ++ Objc.arg property "key" make_pointer_from_object
       ++ Objc.arg startSpec "startSpecifier" make_pointer_from_object
       ++ Objc.arg endSpec "endSpecifier" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method startSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "startSpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
   method setStartSpecifier (startSpec : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setStartSpecifier:")[make_pointer_from_object startSpec]) : unit)
   method endSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "endSpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
   method setEndSpecifier (endSpec : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEndSpecifier:")[make_pointer_from_object endSpec]) : unit)
end
let make_NSScriptObjectSpecifier_of_NSRelativeSpecifier (o : [`NSRelativeSpecifier] nativeNSObject) = (Obj.magic o : [`NSScriptObjectSpecifier] nativeNSObject)
(* Class object for NSRelativeSpecifier *)
let class_NSRelativeSpecifier = object
   val repr = Classes.find "NSRelativeSpecifier"
   method _new = (Objc.objcnew repr : [`NSRelativeSpecifier] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSRelativeSpecifier] nativeNSObject)
end
(* Encapsulation for native instance of NSRelativeSpecifier *)
class native_NSRelativeSpecifier = fun (o : [`NSRelativeSpecifier] nativeNSObject) -> object (self)
   inherit native_NSScriptObjectSpecifier (make_NSScriptObjectSpecifier_of_NSRelativeSpecifier o) as super
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method initWithContainerClassDescription  ~containerSpecifier:(container : [`NSScriptObjectSpecifier] Objc.t ) ~key:(property : [`NSString] Objc.t ) ~relativePosition:(relPos : int ) ~baseSpecifier:(baseSpecifier : [`NSScriptObjectSpecifier] Objc.t ) (classDesc : [`NSScriptClassDescription] Objc.t) =
     let sel, args = (
       Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
       ++ Objc.arg container "containerSpecifier" make_pointer_from_object
       ++ Objc.arg property "key" make_pointer_from_object
       ++ Objc.arg relPos "relativePosition" make_int
       ++ Objc.arg baseSpecifier "baseSpecifier" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method relativePosition =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "relativePosition:")[]) : int)
   method setRelativePosition (relPos : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRelativePosition:")[make_int relPos]) : unit)
   method baseSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "baseSpecifier:")[]) : [`NSScriptObjectSpecifier] Objc.nativeNSObject)
   method setBaseSpecifier (baseSpecifier : [`NSScriptObjectSpecifier] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBaseSpecifier:")[make_pointer_from_object baseSpecifier]) : unit)
end
let make_NSScriptObjectSpecifier_of_NSUniqueIDSpecifier (o : [`NSUniqueIDSpecifier] nativeNSObject) = (Obj.magic o : [`NSScriptObjectSpecifier] nativeNSObject)
(* Class object for NSUniqueIDSpecifier *)
let class_NSUniqueIDSpecifier = object
   val repr = Classes.find "NSUniqueIDSpecifier"
   method _new = (Objc.objcnew repr : [`NSUniqueIDSpecifier] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSUniqueIDSpecifier] nativeNSObject)
end
(* Encapsulation for native instance of NSUniqueIDSpecifier *)
class native_NSUniqueIDSpecifier = fun (o : [`NSUniqueIDSpecifier] nativeNSObject) -> object (self)
   inherit native_NSScriptObjectSpecifier (make_NSScriptObjectSpecifier_of_NSUniqueIDSpecifier o) as super
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method initWithContainerClassDescription  ~containerSpecifier:(container : [`NSScriptObjectSpecifier] Objc.t ) ~key:(property : [`NSString] Objc.t ) ~uniqueID:(uniqueID : [`NSObject] Objc.t ) (classDesc : [`NSScriptClassDescription] Objc.t) =
     let sel, args = (
       Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
       ++ Objc.arg container "containerSpecifier" make_pointer_from_object
       ++ Objc.arg property "key" make_pointer_from_object
       ++ Objc.arg uniqueID "uniqueID" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method uniqueID =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "uniqueID:")[]) : [`NSObject] Objc.nativeNSObject)
   method setUniqueID (uniqueID : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setUniqueID:")[make_pointer_from_object uniqueID]) : unit)
end
let make_NSScriptObjectSpecifier_of_NSWhoseSpecifier (o : [`NSWhoseSpecifier] nativeNSObject) = (Obj.magic o : [`NSScriptObjectSpecifier] nativeNSObject)
(* Class object for NSWhoseSpecifier *)
let class_NSWhoseSpecifier = object
   val repr = Classes.find "NSWhoseSpecifier"
   method _new = (Objc.objcnew repr : [`NSWhoseSpecifier] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSWhoseSpecifier] nativeNSObject)
end
(* Encapsulation for native instance of NSWhoseSpecifier *)
class native_NSWhoseSpecifier = fun (o : [`NSWhoseSpecifier] nativeNSObject) -> object (self)
   inherit native_NSScriptObjectSpecifier (make_NSScriptObjectSpecifier_of_NSWhoseSpecifier o) as super
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method initWithContainerClassDescription  ~containerSpecifier:(container : [`NSScriptObjectSpecifier] Objc.t ) ~key:(property : [`NSString] Objc.t ) ~test:(test : [`NSScriptWhoseTest] Objc.t ) (classDesc : [`NSScriptClassDescription] Objc.t) =
     let sel, args = (
       Objc.arg classDesc "initWithContainerClassDescription" make_pointer_from_object
       ++ Objc.arg container "containerSpecifier" make_pointer_from_object
       ++ Objc.arg property "key" make_pointer_from_object
       ++ Objc.arg test "test" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method test =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "test:")[]) : [`NSScriptWhoseTest] Objc.nativeNSObject)
   method setTest (test : [`NSScriptWhoseTest] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTest:")[make_pointer_from_object test]) : unit)
   method startSubelementIdentifier =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "startSubelementIdentifier:")[]) : int)
   method setStartSubelementIdentifier (subelement : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setStartSubelementIdentifier:")[make_int subelement]) : unit)
   method startSubelementIndex =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "startSubelementIndex:")[]) : int)
   method setStartSubelementIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setStartSubelementIndex:")[make_int index]) : unit)
   method endSubelementIdentifier =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "endSubelementIdentifier:")[]) : int)
   method setEndSubelementIdentifier (subelement : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEndSubelementIdentifier:")[make_int subelement]) : unit)
   method endSubelementIndex =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "endSubelementIndex:")[]) : int)
   method setEndSubelementIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEndSubelementIndex:")[make_int index]) : unit)
end
