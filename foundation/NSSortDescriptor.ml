(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSortDescriptor] id) -> object
  inherit Im_NSSortDescriptor.methods
  method repr = r
end

(* Class object for NSSortDescriptor *)
let c = Classes.find "NSSortDescriptor"
let _new()= (Objc.objcnew c : [`NSSortDescriptor] id)
let alloc() = (Objc.objcalloc c : [`NSSortDescriptor] id)
