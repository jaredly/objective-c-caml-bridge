(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSortDescriptor.methods
end

class t = fun (r :[`NSSortDescriptor] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSortDescriptor *)
let c = Classes.find "NSSortDescriptor"
let _new()= (Objc.objcnew c : [`NSSortDescriptor] id)
let alloc() = (Objc.objcalloc c : [`NSSortDescriptor] id)
