(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSValue] id) -> object
  inherit Cati_NSValueExtensionMethods.methods_NSValue
  inherit Cati_NSValueCreation.methods_NSValue
  inherit Im_NSValue.methods
  method repr = r
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
let valueWithBytes  ~objCType:(_type : string ) (value : (*pointer to const void*) unsupported) =
    let sel, args = (
      Objc.arg value "valueWithBytes" (*pointer to const void*) unsupported
      ++ Objc.arg _type "objCType" make_string
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSValue] Objc.id))

*)
(*  UNSUPPORTED
let value  ~withObjCType:(_type : string ) (value : (*pointer to const void*) unsupported) =
    let sel, args = (
      Objc.arg value "value" (*pointer to const void*) unsupported
      ++ Objc.arg _type "withObjCType" make_string
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSValue] Objc.id))

*)
