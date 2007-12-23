open Objc
open NSObject


external init : unit -> unit = "caml_init_NSScriptWhoseTests"
let _ = init()
(* Class object for NSLogicalTest *)
let class_NSLogicalTest = object
   val o = Classes.find "NSLogicalTest"
   method _new = (Objc.objcnew o : [`NSLogicalTest] nativeNSObject)
end
(* Encapsulation for native instance of NSLogicalTest *)
class native_NSLogicalTest = fun (o : [`NSLogicalTest] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initAndTestWithTests (subTests : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initAndTestWithTests:")[make_pointer_from_object subTests]) : [`NSObject] Objc.nativeNSObject)
   method initOrTestWithTests (subTests : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initOrTestWithTests:")[make_pointer_from_object subTests]) : [`NSObject] Objc.nativeNSObject)
   method initNotTestWithTest (subTest : [`NSScriptWhoseTest] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initNotTestWithTest:")[make_pointer_from_object subTest]) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSScriptWhoseTest *)
let class_NSScriptWhoseTest = object
   val o = Classes.find "NSScriptWhoseTest"
   method _new = (Objc.objcnew o : [`NSScriptWhoseTest] nativeNSObject)
end
(* Encapsulation for native instance of NSScriptWhoseTest *)
class native_NSScriptWhoseTest = fun (o : [`NSScriptWhoseTest] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method isTrue =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isTrue:")[]) : bool)
end
(* Class object for NSSpecifierTest *)
let class_NSSpecifierTest = object
   val o = Classes.find "NSSpecifierTest"
   method _new = (Objc.objcnew o : [`NSSpecifierTest] nativeNSObject)
end
(* Encapsulation for native instance of NSSpecifierTest *)
class native_NSSpecifierTest = fun (o : [`NSSpecifierTest] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithObjectSpecifier  ~comparisonOperator:(compOp : int ) ~testObject:(obj2 : [`NSObject] Objc.t ) (obj1 : [`NSScriptObjectSpecifier] Objc.t) =
     let sel, args = (
       Objc.arg obj1 "initWithObjectSpecifier" make_pointer_from_object
       ++ Objc.arg compOp "comparisonOperator" make_int
       ++ Objc.arg obj2 "testObject" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSScriptingComparisonMethods *)
(* methods for category NSComparisonMethods *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSScriptingComparisonMethods *)
   method scriptingIsEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "scriptingIsEqualTo:")[make_pointer_from_object _object]) : bool)
   method scriptingIsLessThanOrEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "scriptingIsLessThanOrEqualTo:")[make_pointer_from_object _object]) : bool)
   method scriptingIsLessThan (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "scriptingIsLessThan:")[make_pointer_from_object _object]) : bool)
   method scriptingIsGreaterThanOrEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "scriptingIsGreaterThanOrEqualTo:")[make_pointer_from_object _object]) : bool)
   method scriptingIsGreaterThan (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "scriptingIsGreaterThan:")[make_pointer_from_object _object]) : bool)
   method scriptingBeginsWith (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "scriptingBeginsWith:")[make_pointer_from_object _object]) : bool)
   method scriptingEndsWith (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "scriptingEndsWith:")[make_pointer_from_object _object]) : bool)
   method scriptingContains (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "scriptingContains:")[make_pointer_from_object _object]) : bool)
(* methods for category NSComparisonMethods *)
   method isEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEqualTo:")[make_pointer_from_object _object]) : bool)
   method isLessThanOrEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isLessThanOrEqualTo:")[make_pointer_from_object _object]) : bool)
   method isLessThan (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isLessThan:")[make_pointer_from_object _object]) : bool)
   method isGreaterThanOrEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isGreaterThanOrEqualTo:")[make_pointer_from_object _object]) : bool)
   method isGreaterThan (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isGreaterThan:")[make_pointer_from_object _object]) : bool)
   method isNotEqualTo (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isNotEqualTo:")[make_pointer_from_object _object]) : bool)
   method doesContain (_object : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "doesContain:")[make_pointer_from_object _object]) : bool)
   method isLike (_object : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isLike:")[make_pointer_from_object _object]) : bool)
   method isCaseInsensitiveLike (_object : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isCaseInsensitiveLike:")[make_pointer_from_object _object]) : bool)
end
