(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDrag of NSView *)
class virtual methods_NSView = object (self)
  method virtual repr : [`NSObject] Objc.id
  method dragImage_at_offset_event_pasteboard_source_slideBack  (anImage : [`NSImage] Objc.t) (viewLocation : NSPoint.t) (initialOffset : NSSize.t) (event : [`NSEvent] Objc.t) (pboard : [`NSPasteboard] Objc.t) (sourceObj : [`NSObject] Objc.t) (slideFlag : bool) =
    let sel, args = (
      Objc.arg anImage "dragImage" make_pointer_from_object
      ++ Objc.arg viewLocation "at" make_point
      ++ Objc.arg initialOffset "offset" make_size
      ++ Objc.arg event "event" make_pointer_from_object
      ++ Objc.arg pboard "pasteboard" make_pointer_from_object
      ++ Objc.arg sourceObj "source" make_pointer_from_object
      ++ Objc.arg slideFlag "slideBack" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method registeredDraggedTypes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "registeredDraggedTypes")[])
       : [`NSArray] Objc.id))
  method registerForDraggedTypes (newTypes : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "registerForDraggedTypes:")
      [make_pointer_from_object newTypes]) : unit)
  method unregisterDraggedTypes =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unregisterDraggedTypes")[])
       : unit)
  method dragFile_fromRect_slideBack_event  (filename : [`NSString] Objc.t) (rect : NSRect.t) (aFlag : bool) (event : [`NSEvent] Objc.t) =
    let sel, args = (
      Objc.arg filename "dragFile" make_pointer_from_object
      ++ Objc.arg rect "fromRect" make_rect
      ++ Objc.arg aFlag "slideBack" make_bool
      ++ Objc.arg event "event" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method dragPromisedFilesOfTypes_fromRect_source_slideBack_event  (typeArray : [`NSArray] Objc.t) (rect : NSRect.t) (sourceObject : [`NSObject] Objc.t) (aFlag : bool) (event : [`NSEvent] Objc.t) =
    let sel, args = (
      Objc.arg typeArray "dragPromisedFilesOfTypes" make_pointer_from_object
      ++ Objc.arg rect "fromRect" make_rect
      ++ Objc.arg sourceObject "source" make_pointer_from_object
      ++ Objc.arg aFlag "slideBack" make_bool
      ++ Objc.arg event "event" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
(* instance methods for category NSDrag of NSWindow *)
class virtual methods_NSWindow = object (self)
  method virtual repr : [`NSObject] Objc.id
  method dragImage_at_offset_event_pasteboard_source_slideBack  (anImage : [`NSImage] Objc.t) (baseLocation : NSPoint.t) (initialOffset : NSSize.t) (event : [`NSEvent] Objc.t) (pboard : [`NSPasteboard] Objc.t) (sourceObj : [`NSObject] Objc.t) (slideFlag : bool) =
    let sel, args = (
      Objc.arg anImage "dragImage" make_pointer_from_object
      ++ Objc.arg baseLocation "at" make_point
      ++ Objc.arg initialOffset "offset" make_size
      ++ Objc.arg event "event" make_pointer_from_object
      ++ Objc.arg pboard "pasteboard" make_pointer_from_object
      ++ Objc.arg sourceObj "source" make_pointer_from_object
      ++ Objc.arg slideFlag "slideBack" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method registerForDraggedTypes (newTypes : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "registerForDraggedTypes:")
      [make_pointer_from_object newTypes]) : unit)
  method unregisterDraggedTypes =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unregisterDraggedTypes")[])
       : unit)
end
