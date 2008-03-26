(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSplitView.methods
end

class t = fun (r :[`NSSplitView] id) -> object
  inherit methods
  inherit NSView.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSplitView *)
let c = Classes.find "NSSplitView"
let _new()= (Objc.objcnew c : [`NSSplitView] id)
let alloc() = (Objc.objcalloc c : [`NSSplitView] id)
