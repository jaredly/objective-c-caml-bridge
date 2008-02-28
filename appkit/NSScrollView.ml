(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSScrollView] id) -> object
  inherit Cati_NSRulerSupport.methods_NSScrollView
  inherit Im_NSScrollView.methods
  method repr = r
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
(*  UNSUPPORTED
let frameSizeForContentSize  ~hasHorizontalScroller:(hFlag : bool ) ~hasVerticalScroller:(vFlag : bool ) ~borderType:(aType : (*NSBorderType*) unsupported ) (cSize : (*NSSize*) unsupported) =
    let sel, args = (
      Objc.arg cSize "frameSizeForContentSize" (*NSSize*) unsupported
      ++ Objc.arg hFlag "hasHorizontalScroller" make_bool
      ++ Objc.arg vFlag "hasVerticalScroller" make_bool
      ++ Objc.arg aType "borderType" (*NSBorderType*) unsupported
    ) ([],[]) in
      ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported c (Selector.find_list sel) args)
       : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
let contentSizeForFrameSize  ~hasHorizontalScroller:(hFlag : bool ) ~hasVerticalScroller:(vFlag : bool ) ~borderType:(aType : (*NSBorderType*) unsupported ) (fSize : (*NSSize*) unsupported) =
    let sel, args = (
      Objc.arg fSize "contentSizeForFrameSize" (*NSSize*) unsupported
      ++ Objc.arg hFlag "hasHorizontalScroller" make_bool
      ++ Objc.arg vFlag "hasVerticalScroller" make_bool
      ++ Objc.arg aType "borderType" (*NSBorderType*) unsupported
    ) ([],[]) in
      ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported c (Selector.find_list sel) args)
       : (*NSSize*) unsupported)

*)
