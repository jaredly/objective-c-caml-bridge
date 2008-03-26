(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSClipViewSuperview of NSView *)
class virtual methods_NSView = object (self)
  method virtual repr : [`NSObject] Objc.id
  method reflectScrolledClipView (aClipView : [`NSClipView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "reflectScrolledClipView:")
      [make_pointer_from_object aClipView]) : unit)
  method scrollClipView_toPoint  (aClipView : [`NSClipView] Objc.t) (aPoint : NSPoint.t) =
    let sel, args = (
      Objc.arg aClipView "scrollClipView" make_pointer_from_object
      ++ Objc.arg aPoint "toPoint" make_point
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
