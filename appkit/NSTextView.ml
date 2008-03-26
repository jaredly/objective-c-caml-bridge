(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSSharing.methods_NSTextView
  inherit AppKit_cati_NSDragging.methods_NSTextView
  inherit AppKit_cati_NSPasteboard.methods_NSTextView
  inherit AppKit_cati_NSCompletion.methods_NSTextView
  inherit Im_NSTextView.methods
end

class t = fun (r :[`NSTextView] id) -> object
  inherit methods
  inherit NSText.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTextView *)
let c = Classes.find "NSTextView"
let _new()= (Objc.objcnew c : [`NSTextView] id)
let alloc() = (Objc.objcalloc c : [`NSTextView] id)
(* class methods for category NSSharing of NSTextView *)
(* class methods for category NSDragging of NSTextView *)
(* class methods for category NSPasteboard of NSTextView *)
let registerForServices () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "registerForServices")[])
       : unit)
(* class methods for category NSCompletion of NSTextView *)
