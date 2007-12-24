(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSTextContainer"
let _ = init()
let make_NSObject_of_NSTextContainer (o : [`NSTextContainer] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSTextContainer *)
let class_NSTextContainer = object
   val repr = Classes.find "NSTextContainer"
   method _new = (Objc.objcnew repr : [`NSTextContainer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTextContainer] nativeNSObject)
end
(* Encapsulation for native instance of NSTextContainer *)
class native_NSTextContainer = fun (o : [`NSTextContainer] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSTextContainer o) as super
(*  UNSUPPORTED
   method initWithContainerSize (size : (*NSSize*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithContainerSize:")[(*NSSize*) unsupported size]) : [`NSObject] Objc.nativeNSObject)

*)
   method layoutManager =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "layoutManager:")[]) : [`NSLayoutManager] Objc.nativeNSObject)
   method setLayoutManager (layoutManager : [`NSLayoutManager] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLayoutManager:")[make_pointer_from_object layoutManager]) : unit)
   method replaceLayoutManager (newLayoutManager : [`NSLayoutManager] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "replaceLayoutManager:")[make_pointer_from_object newLayoutManager]) : unit)
   method textView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "textView:")[]) : [`NSTextView] Objc.nativeNSObject)
   method setTextView (textView : [`NSTextView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTextView:")[make_pointer_from_object textView]) : unit)
   method setWidthTracksTextView (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setWidthTracksTextView:")[make_bool flag]) : unit)
   method widthTracksTextView =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "widthTracksTextView:")[]) : bool)
   method setHeightTracksTextView (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHeightTracksTextView:")[make_bool flag]) : unit)
   method heightTracksTextView =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "heightTracksTextView:")[]) : bool)
(*  UNSUPPORTED
   method setContainerSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContainerSize:")[(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
   method containerSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "containerSize:")[]) : (*NSSize*) unsupported)

*)
   method setLineFragmentPadding (pad : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLineFragmentPadding:")[make_float pad]) : unit)
   method lineFragmentPadding =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "lineFragmentPadding:")[]) : float)
(*  UNSUPPORTED
   method lineFragmentRectForProposedRect  ~sweepDirection:(sweepDirection : int ) ~movementDirection:(movementDirection : int ) ~remainingRect:(remainingRect : (*NSRectPointer*) unsupported ) (proposedRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg proposedRect "lineFragmentRectForProposedRect" (*NSRect*) unsupported
       ++ Objc.arg sweepDirection "sweepDirection" make_int
       ++ Objc.arg movementDirection "movementDirection" make_int
       ++ Objc.arg remainingRect "remainingRect" (*NSRectPointer*) unsupported
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
   method isSimpleRectangularTextContainer =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isSimpleRectangularTextContainer:")[]) : bool)
(*  UNSUPPORTED
   method containsPoint (point : (*NSPoint*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "containsPoint:")[(*NSPoint*) unsupported point]) : bool)

*)
end
