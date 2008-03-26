(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSGeometryKeyedCoding.methods_NSCoder
  inherit Foundation_cati_NSGeometryCoding.methods_NSCoder
  inherit Foundation_cati_NSTypedstreamCompatibility.methods_NSCoder
  inherit Foundation_cati_NSExtendedCoder.methods_NSCoder
  inherit Im_NSCoder.methods
end

class t = fun (r :[`NSCoder] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCoder *)
let c = Classes.find "NSCoder"
let _new()= (Objc.objcnew c : [`NSCoder] id)
let alloc() = (Objc.objcalloc c : [`NSCoder] id)
(* class methods for category NSGeometryKeyedCoding of NSCoder *)
(* class methods for category NSGeometryCoding of NSCoder *)
(* class methods for category NSTypedstreamCompatibility of NSCoder *)
(* class methods for category NSExtendedCoder of NSCoder *)
