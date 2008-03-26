(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSKeyValueCoding.methods_NSMutableDictionary
  inherit Foundation_cati_NSMutableDictionaryCreation.methods_NSMutableDictionary
  inherit Foundation_cati_NSExtendedMutableDictionary.methods_NSMutableDictionary
  inherit Im_NSMutableDictionary.methods
end

class t = fun (r :[`NSMutableDictionary] id) -> object
  inherit methods
  inherit NSDictionary.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMutableDictionary *)
let c = Classes.find "NSMutableDictionary"
let _new()= (Objc.objcnew c : [`NSMutableDictionary] id)
let alloc() = (Objc.objcalloc c : [`NSMutableDictionary] id)
(* class methods for category NSKeyValueCoding of NSMutableDictionary *)
(* class methods for category NSMutableDictionaryCreation of NSMutableDictionary *)
let dictionaryWithCapacity (numItems : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dictionaryWithCapacity:")
      [make_int numItems]) : [`NSMutableDictionary] Objc.id))
(* class methods for category NSExtendedMutableDictionary of NSMutableDictionary *)
