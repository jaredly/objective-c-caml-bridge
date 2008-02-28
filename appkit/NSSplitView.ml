(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSplitView] id) -> object
  inherit Im_NSSplitView.methods
  method repr = r
end

(* Class object for NSSplitView *)
let c = Classes.find "NSSplitView"
let _new()= (Objc.objcnew c : [`NSSplitView] id)
let alloc() = (Objc.objcalloc c : [`NSSplitView] id)
