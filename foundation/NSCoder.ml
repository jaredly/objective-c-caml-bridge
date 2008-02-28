(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSCoder] id) -> object
  inherit Cati_NSTypedstreamCompatibility.methods_NSCoder
  inherit Cati_NSExtendedCoder.methods_NSCoder
  inherit Im_NSCoder.methods
  method repr = r
end

(* Class object for NSCoder *)
let c = Classes.find "NSCoder"
let _new()= (Objc.objcnew c : [`NSCoder] id)
let alloc() = (Objc.objcalloc c : [`NSCoder] id)
(* class methods for category NSTypedstreamCompatibility of NSCoder *)
(* class methods for category NSExtendedCoder of NSCoder *)
