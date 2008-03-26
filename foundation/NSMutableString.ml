(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSMutableStringExtensionMethods.methods_NSMutableString
  inherit Im_NSMutableString.methods
end

class t = fun (r :[`NSMutableString] id) -> object
  inherit methods
  inherit NSString.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMutableString *)
let c = Classes.find "NSMutableString"
let _new()= (Objc.objcnew c : [`NSMutableString] id)
let alloc() = (Objc.objcalloc c : [`NSMutableString] id)
(* class methods for category NSMutableStringExtensionMethods of NSMutableString *)
let stringWithCapacity (capacity : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "stringWithCapacity:")
      [make_int capacity]) : [`NSMutableString] Objc.id))
