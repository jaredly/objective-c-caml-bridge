(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDragging of NSTextView *)
class virtual methods_NSTextView = object (self)
  method virtual repr : [`NSObject] Objc.id
  method dragSelectionWithEvent_offset_slideBack  (event : [`NSEvent] Objc.t) (mouseOffset : NSSize.t) (slideBack : bool) =
    let sel, args = (
      Objc.arg event "dragSelectionWithEvent" make_pointer_from_object
      ++ Objc.arg mouseOffset "offset" make_size
      ++ Objc.arg slideBack "slideBack" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
(*  UNSUPPORTED
  method dragImageForSelectionWithEvent_origin  (event : [`NSEvent] Objc.t) (origin : (*NSPointPointer*) unsupported) =
    let sel, args = (
      Objc.arg event "dragImageForSelectionWithEvent" make_pointer_from_object
      ++ Objc.arg origin "origin" (*NSPointPointer*) unsupported
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSImage] Objc.id))

*)
  method acceptableDragTypes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "acceptableDragTypes")[])
       : [`NSArray] Objc.id))
  method dragOperationForDraggingInfo_type  (dragInfo : [`NSObject] Objc.t) (_type : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg dragInfo "dragOperationForDraggingInfo" make_pointer_from_object
      ++ Objc.arg _type "type" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method cleanUpAfterDragOperation =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "cleanUpAfterDragOperation")[])
       : unit)
  method acceptsGlyphInfo =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "acceptsGlyphInfo")[])
       : bool)
  method setAcceptsGlyphInfo (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAcceptsGlyphInfo:")
      [make_bool flag]) : unit)
end
