(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSShadow.methods
end

class t = fun (r :[`NSShadow] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSShadow *)
let c = Classes.find "NSShadow"
let _new()= (Objc.objcnew c : [`NSShadow] id)
let alloc() = (Objc.objcalloc c : [`NSShadow] id)
