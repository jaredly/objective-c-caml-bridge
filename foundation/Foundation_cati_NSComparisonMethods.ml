(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSComparisonMethods of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method isEqualTo (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualTo:")
      [make_pointer_from_object _object]) : bool)
  method isLessThanOrEqualTo (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isLessThanOrEqualTo:")
      [make_pointer_from_object _object]) : bool)
  method isLessThan (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isLessThan:")
      [make_pointer_from_object _object]) : bool)
  method isGreaterThanOrEqualTo (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isGreaterThanOrEqualTo:")
      [make_pointer_from_object _object]) : bool)
  method isGreaterThan (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isGreaterThan:")
      [make_pointer_from_object _object]) : bool)
  method isNotEqualTo (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isNotEqualTo:")
      [make_pointer_from_object _object]) : bool)
  method doesContain (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "doesContain:")
      [make_pointer_from_object _object]) : bool)
  method isLike (_object : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isLike:")
      [make_pointer_from_object _object]) : bool)
  method isCaseInsensitiveLike (_object : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isCaseInsensitiveLike:")
      [make_pointer_from_object _object]) : bool)
end
