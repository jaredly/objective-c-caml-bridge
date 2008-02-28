(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSAlertFirstButtonReturn = 1000L
let _NSAlertSecondButtonReturn = 1001L
let _NSAlertThirdButtonReturn = 1002L


class t = fun (r :[`NSAlert] id) -> object
  inherit Im_NSAlert.methods
  method repr = r
end

(* Class object for NSAlert *)
let c = Classes.find "NSAlert"
let _new()= (Objc.objcnew c : [`NSAlert] id)
let alloc() = (Objc.objcalloc c : [`NSAlert] id)
let alertWithError (error : [`NSError] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "alertWithError:")
      [make_pointer_from_object error]) : [`NSAlert] Objc.id))
