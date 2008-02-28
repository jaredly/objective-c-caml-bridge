(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDrag of NSView *)
class virtual methods_NSView = object (self)
  method virtual repr : [`NSView] Objc.id
(*  UNSUPPORTED
  method dragImage  ~at:(viewLocation : (*NSPoint*) unsupported ) ~offset:(initialOffset : (*NSSize*) unsupported ) ~event:(event : [`NSEvent] Objc.t ) ~pasteboard:(pboard : [`NSPasteboard] Objc.t ) ~source:(sourceObj : [`NSObject] Objc.t ) ~slideBack:(slideFlag : bool ) (anImage : [`NSImage] Objc.t) =
    let sel, args = (
      Objc.arg anImage "dragImage" make_pointer_from_object
      ++ Objc.arg viewLocation "at" (*NSPoint*) unsupported
      ++ Objc.arg initialOffset "offset" (*NSSize*) unsupported
      ++ Objc.arg event "event" make_pointer_from_object
      ++ Objc.arg pboard "pasteboard" make_pointer_from_object
      ++ Objc.arg sourceObj "source" make_pointer_from_object
      ++ Objc.arg slideFlag "slideBack" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method registeredDraggedTypes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "registeredDraggedTypes")[])
       : [`NSArray] Objc.id))
  method registerForDraggedTypes (newTypes : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "registerForDraggedTypes:")
      [make_pointer_from_object newTypes]) : unit)
  method unregisterDraggedTypes =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unregisterDraggedTypes")[])
       : unit)
(*  UNSUPPORTED
  method dragFile  ~fromRect:(rect : (*NSRect*) unsupported ) ~slideBack:(aFlag : bool ) ~event:(event : [`NSEvent] Objc.t ) (filename : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg filename "dragFile" make_pointer_from_object
      ++ Objc.arg rect "fromRect" (*NSRect*) unsupported
      ++ Objc.arg aFlag "slideBack" make_bool
      ++ Objc.arg event "event" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
(*  UNSUPPORTED
  method dragPromisedFilesOfTypes  ~fromRect:(rect : (*NSRect*) unsupported ) ~source:(sourceObject : [`NSObject] Objc.t ) ~slideBack:(aFlag : bool ) ~event:(event : [`NSEvent] Objc.t ) (typeArray : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg typeArray "dragPromisedFilesOfTypes" make_pointer_from_object
      ++ Objc.arg rect "fromRect" (*NSRect*) unsupported
      ++ Objc.arg sourceObject "source" make_pointer_from_object
      ++ Objc.arg aFlag "slideBack" make_bool
      ++ Objc.arg event "event" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
end
(* instance methods for category NSDrag of NSWindow *)
class virtual methods_NSWindow = object (self)
  method virtual repr : [`NSWindow] Objc.id
(*  UNSUPPORTED
  method dragImage  ~at:(baseLocation : (*NSPoint*) unsupported ) ~offset:(initialOffset : (*NSSize*) unsupported ) ~event:(event : [`NSEvent] Objc.t ) ~pasteboard:(pboard : [`NSPasteboard] Objc.t ) ~source:(sourceObj : [`NSObject] Objc.t ) ~slideBack:(slideFlag : bool ) (anImage : [`NSImage] Objc.t) =
    let sel, args = (
      Objc.arg anImage "dragImage" make_pointer_from_object
      ++ Objc.arg baseLocation "at" (*NSPoint*) unsupported
      ++ Objc.arg initialOffset "offset" (*NSSize*) unsupported
      ++ Objc.arg event "event" make_pointer_from_object
      ++ Objc.arg pboard "pasteboard" make_pointer_from_object
      ++ Objc.arg sourceObj "source" make_pointer_from_object
      ++ Objc.arg slideFlag "slideBack" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method registerForDraggedTypes (newTypes : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "registerForDraggedTypes:")
      [make_pointer_from_object newTypes]) : unit)
  method unregisterDraggedTypes =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unregisterDraggedTypes")[])
       : unit)
end
