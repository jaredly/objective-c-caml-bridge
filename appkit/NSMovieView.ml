(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMovieView.methods
end

class t = fun (r :[`NSMovieView] id) -> object
  inherit methods
  inherit NSView.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMovieView *)
let c = Classes.find "NSMovieView"
let _new()= (Objc.objcnew c : [`NSMovieView] id)
let alloc() = (Objc.objcalloc c : [`NSMovieView] id)
