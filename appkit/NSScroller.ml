(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSScroller.methods
end

class t = fun (r :[`NSScroller] id) -> object
  inherit methods
  inherit NSControl.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSScroller *)
let c = Classes.find "NSScroller"
let _new()= (Objc.objcnew c : [`NSScroller] id)
let alloc() = (Objc.objcalloc c : [`NSScroller] id)
let scrollerWidth () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "scrollerWidth")[])
       : float)
let scrollerWidthForControlSize (controlSize : int) =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "scrollerWidthForControlSize:")
      [make_int controlSize]) : float)
