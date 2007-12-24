(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSScriptWhoseTests"
let _ = init()
let make_NSObject_of_NSScriptWhoseTest (o : [`NSScriptWhoseTest] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSScriptWhoseTest *)
let class_NSScriptWhoseTest = object
   val repr = Classes.find "NSScriptWhoseTest"
   method _new = (Objc.objcnew repr : [`NSScriptWhoseTest] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSScriptWhoseTest] nativeNSObject)
end
(* Encapsulation for native instance of NSScriptWhoseTest *)
class native_NSScriptWhoseTest = fun (o : [`NSScriptWhoseTest] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSScriptWhoseTest o) as super
   method isTrue =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isTrue:")[]) : bool)
end
let make_NSScriptWhoseTest_of_NSLogicalTest (o : [`NSLogicalTest] nativeNSObject) = (Obj.magic o : [`NSScriptWhoseTest] nativeNSObject)
(* Class object for NSLogicalTest *)
let class_NSLogicalTest = object
   val repr = Classes.find "NSLogicalTest"
   method _new = (Objc.objcnew repr : [`NSLogicalTest] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSLogicalTest] nativeNSObject)
end
(* Encapsulation for native instance of NSLogicalTest *)
class native_NSLogicalTest = fun (o : [`NSLogicalTest] nativeNSObject) -> object (self)
   inherit native_NSScriptWhoseTest (make_NSScriptWhoseTest_of_NSLogicalTest o) as super
   method initAndTestWithTests (subTests : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initAndTestWithTests:")[make_pointer_from_object subTests]) : [`NSObject] Objc.nativeNSObject)
   method initOrTestWithTests (subTests : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initOrTestWithTests:")[make_pointer_from_object subTests]) : [`NSObject] Objc.nativeNSObject)
   method initNotTestWithTest (subTest : [`NSScriptWhoseTest] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initNotTestWithTest:")[make_pointer_from_object subTest]) : [`NSObject] Objc.nativeNSObject)
end
let make_NSScriptWhoseTest_of_NSSpecifierTest (o : [`NSSpecifierTest] nativeNSObject) = (Obj.magic o : [`NSScriptWhoseTest] nativeNSObject)
(* Class object for NSSpecifierTest *)
let class_NSSpecifierTest = object
   val repr = Classes.find "NSSpecifierTest"
   method _new = (Objc.objcnew repr : [`NSSpecifierTest] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSpecifierTest] nativeNSObject)
end
(* Encapsulation for native instance of NSSpecifierTest *)
class native_NSSpecifierTest = fun (o : [`NSSpecifierTest] nativeNSObject) -> object (self)
   inherit native_NSScriptWhoseTest (make_NSScriptWhoseTest_of_NSSpecifierTest o) as super
   method initWithObjectSpecifier  ~comparisonOperator:(compOp : int ) ~testObject:(obj2 : [`NSObject] Objc.t ) (obj1 : [`NSScriptObjectSpecifier] Objc.t) =
     let sel, args = (
       Objc.arg obj1 "initWithObjectSpecifier" make_pointer_from_object
       ++ Objc.arg compOp "comparisonOperator" make_int
       ++ Objc.arg obj2 "testObject" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSScriptingComparisonMethods *)
(* methods for category NSComparisonMethods *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSScriptingComparisonMethods *)
   method scriptingIsEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scriptingIsEqualTo:")[make_pointer_from_object _object]) : bool)
   method scriptingIsLessThanOrEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scriptingIsLessThanOrEqualTo:")[make_pointer_from_object _object]) : bool)
   method scriptingIsLessThan (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scriptingIsLessThan:")[make_pointer_from_object _object]) : bool)
   method scriptingIsGreaterThanOrEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scriptingIsGreaterThanOrEqualTo:")[make_pointer_from_object _object]) : bool)
   method scriptingIsGreaterThan (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scriptingIsGreaterThan:")[make_pointer_from_object _object]) : bool)
   method scriptingBeginsWith (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scriptingBeginsWith:")[make_pointer_from_object _object]) : bool)
   method scriptingEndsWith (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scriptingEndsWith:")[make_pointer_from_object _object]) : bool)
   method scriptingContains (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scriptingContains:")[make_pointer_from_object _object]) : bool)
(* methods for category NSComparisonMethods *)
   method isEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEqualTo:")[make_pointer_from_object _object]) : bool)
   method isLessThanOrEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isLessThanOrEqualTo:")[make_pointer_from_object _object]) : bool)
   method isLessThan (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isLessThan:")[make_pointer_from_object _object]) : bool)
   method isGreaterThanOrEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isGreaterThanOrEqualTo:")[make_pointer_from_object _object]) : bool)
   method isGreaterThan (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isGreaterThan:")[make_pointer_from_object _object]) : bool)
   method isNotEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isNotEqualTo:")[make_pointer_from_object _object]) : bool)
   method doesContain (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "doesContain:")[make_pointer_from_object _object]) : bool)
   method isLike (_object : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isLike:")[make_pointer_from_object _object]) : bool)
   method isCaseInsensitiveLike (_object : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isCaseInsensitiveLike:")[make_pointer_from_object _object]) : bool)
end
