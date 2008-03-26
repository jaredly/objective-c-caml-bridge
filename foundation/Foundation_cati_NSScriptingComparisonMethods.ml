(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSScriptingComparisonMethods of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method scriptingIsEqualTo (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scriptingIsEqualTo:")
      [make_pointer_from_object _object]) : bool)
  method scriptingIsLessThanOrEqualTo (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scriptingIsLessThanOrEqualTo:")
      [make_pointer_from_object _object]) : bool)
  method scriptingIsLessThan (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scriptingIsLessThan:")
      [make_pointer_from_object _object]) : bool)
  method scriptingIsGreaterThanOrEqualTo (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scriptingIsGreaterThanOrEqualTo:")
      [make_pointer_from_object _object]) : bool)
  method scriptingIsGreaterThan (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scriptingIsGreaterThan:")
      [make_pointer_from_object _object]) : bool)
  method scriptingBeginsWith (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scriptingBeginsWith:")
      [make_pointer_from_object _object]) : bool)
  method scriptingEndsWith (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scriptingEndsWith:")
      [make_pointer_from_object _object]) : bool)
  method scriptingContains (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scriptingContains:")
      [make_pointer_from_object _object]) : bool)
end
