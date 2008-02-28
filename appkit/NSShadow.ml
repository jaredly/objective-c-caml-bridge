(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSShadow] id) -> object
  inherit Im_NSShadow.methods
  method repr = r
end

(* Class object for NSShadow *)
let c = Classes.find "NSShadow"
let _new()= (Objc.objcnew c : [`NSShadow] id)
let alloc() = (Objc.objcalloc c : [`NSShadow] id)
