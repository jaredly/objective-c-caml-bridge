(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSRulerSupport.methods_NSScrollView
  inherit Im_NSScrollView.methods
end

class t = fun (r :[`NSScrollView] id) -> object
  inherit methods
  inherit NSView.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSScrollView *)
let c = Classes.find "NSScrollView"
let _new()= (Objc.objcnew c : [`NSScrollView] id)
let alloc() = (Objc.objcalloc c : [`NSScrollView] id)
(* class methods for category NSRulerSupport of NSScrollView *)
let setRulerViewClass (rulerViewClass : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setRulerViewClass:")
      [make_pointer_from_object rulerViewClass]) : unit)
let rulerViewClass () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "rulerViewClass")[])
       : [`NSScrollView] Objc.id))
let frameSizeForContentSize_hasHorizontalScroller_hasVerticalScroller_borderType  (cSize : NSSize.t) (hFlag : bool) (vFlag : bool) (aType : int) =
    let sel, args = (
      Objc.arg cSize "frameSizeForContentSize" make_size
      ++ Objc.arg hFlag "hasHorizontalScroller" make_bool
      ++ Objc.arg vFlag "hasVerticalScroller" make_bool
      ++ Objc.arg aType "borderType" make_int
    ) ([],[]) in
      (get_size (Objc.invoke Objc.tag_nssize c (Selector.find_list sel) args)
       : NSSize.t)
let contentSizeForFrameSize_hasHorizontalScroller_hasVerticalScroller_borderType  (fSize : NSSize.t) (hFlag : bool) (vFlag : bool) (aType : int) =
    let sel, args = (
      Objc.arg fSize "contentSizeForFrameSize" make_size
      ++ Objc.arg hFlag "hasHorizontalScroller" make_bool
      ++ Objc.arg vFlag "hasVerticalScroller" make_bool
      ++ Objc.arg aType "borderType" make_int
    ) ([],[]) in
      (get_size (Objc.invoke Objc.tag_nssize c (Selector.find_list sel) args)
       : NSSize.t)
