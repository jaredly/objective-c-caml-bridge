(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSObject] id) -> object
  inherit Im_NSObject.methods
  method repr = r
end

(* Class object for NSObject *)
let c = Classes.find "NSObject"
let _new()= (Objc.objcnew c : [`NSObject] id)
let alloc() = (Objc.objcalloc c : [`NSObject] id)
let load () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "load")[])
       : unit)
let initialize () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "initialize")[])
       : unit)
let new_ () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "new")[])
       : [`NSObject] Objc.id))
let allocWithZone (zone : [`NSZone] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "allocWithZone:")
      [make_pointer_from_object zone]) : [`NSObject] Objc.id))
let alloc () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "alloc")[])
       : [`NSObject] Objc.id))
let copyWithZone (zone : [`NSZone] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "copyWithZone:")
      [make_pointer_from_object zone]) : [`NSObject] Objc.id))
let mutableCopyWithZone (zone : [`NSZone] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "mutableCopyWithZone:")
      [make_pointer_from_object zone]) : [`NSObject] Objc.id))
let superclass () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "superclass")[])
       : [`NSObject] Objc.id))
let class_ () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "class")[])
       : [`NSObject] Objc.id))
let poseAsClass (aClass : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "poseAsClass:")
      [make_pointer_from_object aClass]) : unit)
let instancesRespondToSelector (aSelector : selector) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "instancesRespondToSelector:")
      [make_selector aSelector]) : bool)
let conformsToProtocol (protocol : [`Protocol] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "conformsToProtocol:")
      [make_pointer_from_object protocol]) : bool)
(*  UNSUPPORTED
let instanceMethodForSelector (aSelector : selector) =
    ((*IMP*) unsupported (Objc.invoke (*IMP*) Objc.tag_unsupported c (Selector.find "instanceMethodForSelector:")
      [make_selector aSelector]) : (*IMP*) unsupported)

*)
let version () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "version")[])
       : int)
let setVersion (aVersion : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setVersion:")
      [make_int aVersion]) : unit)
let instanceMethodSignatureForSelector (aSelector : selector) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "instanceMethodSignatureForSelector:")
      [make_selector aSelector]) : [`NSMethodSignature] Objc.id))
let isSubclassOfClass (aClass : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "isSubclassOfClass:")
      [make_pointer_from_object aClass]) : bool)
let description () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "description")[])
       : [`NSString] Objc.id))
