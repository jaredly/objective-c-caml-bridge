(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSValueExtensionMethods.methods_NSValue
  inherit Foundation_cati_NSValueCreation.methods_NSValue
  inherit Im_NSValue.methods
  inherit Foundation_cati_NSValueRangeExtensions.methods_NSValue
  inherit Foundation_cati_NSValueGeometryExtensions.methods_NSValue
end

class t = fun (r :[`NSValue] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSValue *)
let c = Classes.find "NSValue"
let _new()= (Objc.objcnew c : [`NSValue] id)
let alloc() = (Objc.objcalloc c : [`NSValue] id)
(* class methods for category NSValueExtensionMethods of NSValue *)
let valueWithNonretainedObject (anObject : [`NSObject] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "valueWithNonretainedObject:")
      [make_pointer_from_object anObject]) : [`NSValue] Objc.id))
(*  UNSUPPORTED
let valueWithPointer (pointer : (*pointer to const void*) unsupported) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "valueWithPointer:")
      [(*pointer to const void*) unsupported pointer]) : [`NSValue] Objc.id))

*)
(* class methods for category NSValueCreation of NSValue *)
(*  UNSUPPORTED
let valueWithBytes_objCType  (value : (*pointer to const void*) unsupported) (_type : string) =
    let sel, args = (
      Objc.arg value "valueWithBytes" (*pointer to const void*) unsupported
      ++ Objc.arg _type "objCType" make_string
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSValue] Objc.id))

*)
(*  UNSUPPORTED
let value_withObjCType  (value : (*pointer to const void*) unsupported) (_type : string) =
    let sel, args = (
      Objc.arg value "value" (*pointer to const void*) unsupported
      ++ Objc.arg _type "withObjCType" make_string
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSValue] Objc.id))

*)
(* class methods for category NSValueRangeExtensions of NSValue *)
let valueWithRange (range : NSRange.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "valueWithRange:")
      [make_range range]) : [`NSValue] Objc.id))
(* class methods for category NSValueGeometryExtensions of NSValue *)
let valueWithPoint (point : NSPoint.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "valueWithPoint:")
      [make_point point]) : [`NSValue] Objc.id))
let valueWithSize (size : NSSize.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "valueWithSize:")
      [make_size size]) : [`NSValue] Objc.id))
let valueWithRect (rect : NSRect.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "valueWithRect:")
      [make_rect rect]) : [`NSValue] Objc.id))
