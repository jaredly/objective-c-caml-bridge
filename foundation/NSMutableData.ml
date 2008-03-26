(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSMutableDataCreation.methods_NSMutableData
  inherit Foundation_cati_NSExtendedMutableData.methods_NSMutableData
  inherit Im_NSMutableData.methods
end

class t = fun (r :[`NSMutableData] id) -> object
  inherit methods
  inherit NSData.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMutableData *)
let c = Classes.find "NSMutableData"
let _new()= (Objc.objcnew c : [`NSMutableData] id)
let alloc() = (Objc.objcalloc c : [`NSMutableData] id)
(* class methods for category NSMutableDataCreation of NSMutableData *)
let dataWithCapacity (aNumItems : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dataWithCapacity:")
      [make_int aNumItems]) : [`NSMutableData] Objc.id))
let dataWithLength (length : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dataWithLength:")
      [make_int length]) : [`NSMutableData] Objc.id))
(* class methods for category NSExtendedMutableData of NSMutableData *)
