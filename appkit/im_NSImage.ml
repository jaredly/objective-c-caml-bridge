(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSImage *)
class virtual methods = object (self)
  method virtual repr : [`NSImage] Objc.id
(*  UNSUPPORTED
  method initWithSize (aSize : (*NSSize*) unsupported) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithSize:")
      [(*NSSize*) unsupported aSize]) : [`NSObject] Objc.id)

*)
  method initWithData (data : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object data]) : [`NSObject] Objc.id)
  method initWithContentsOfFile (fileName : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfFile:")
      [make_pointer_from_object fileName]) : [`NSObject] Objc.id)
  method initWithContentsOfURL (url : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSObject] Objc.id)
  method initByReferencingFile (fileName : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initByReferencingFile:")
      [make_pointer_from_object fileName]) : [`NSObject] Objc.id)
  method initByReferencingURL (url : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initByReferencingURL:")
      [make_pointer_from_object url]) : [`NSObject] Objc.id)
  method initWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithPasteboard:")
      [make_pointer_from_object pasteboard]) : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method setSize (aSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSize:")
      [(*NSSize*) unsupported aSize]) : unit)

*)
(*  UNSUPPORTED
  method size =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "size")[])
       : (*NSSize*) unsupported)

*)
  method setName (string : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "setName:")
      [make_pointer_from_object string]) : bool)
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method setScalesWhenResized (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setScalesWhenResized:")
      [make_bool flag]) : unit)
  method scalesWhenResized =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scalesWhenResized")[])
       : bool)
  method setDataRetained (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDataRetained:")
      [make_bool flag]) : unit)
  method isDataRetained =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isDataRetained")[])
       : bool)
  method setCachedSeparately (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCachedSeparately:")
      [make_bool flag]) : unit)
  method isCachedSeparately =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isCachedSeparately")[])
       : bool)
  method setCacheDepthMatchesImageDepth (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCacheDepthMatchesImageDepth:")
      [make_bool flag]) : unit)
  method cacheDepthMatchesImageDepth =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "cacheDepthMatchesImageDepth")[])
       : bool)
  method setBackgroundColor (aColor : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBackgroundColor:")
      [make_pointer_from_object aColor]) : unit)
  method backgroundColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "backgroundColor")[])
       : [`NSColor] Objc.id))
  method setUsesEPSOnResolutionMismatch (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUsesEPSOnResolutionMismatch:")
      [make_bool flag]) : unit)
  method usesEPSOnResolutionMismatch =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "usesEPSOnResolutionMismatch")[])
       : bool)
  method setPrefersColorMatch (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPrefersColorMatch:")
      [make_bool flag]) : unit)
  method prefersColorMatch =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "prefersColorMatch")[])
       : bool)
  method setMatchesOnMultipleResolution (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMatchesOnMultipleResolution:")
      [make_bool flag]) : unit)
  method matchesOnMultipleResolution =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "matchesOnMultipleResolution")[])
       : bool)
  (* skipping selector dissolveToPoint:fraction *)
(*  UNSUPPORTED
  method dissolveToPoint  ~fromRect:(rect : (*NSRect*) unsupported ) ~fraction:(aFloat : float ) (point : (*NSPoint*) unsupported) =
    let sel, args = (
      Objc.arg point "dissolveToPoint" (*NSPoint*) unsupported
      ++ Objc.arg rect "fromRect" (*NSRect*) unsupported
      ++ Objc.arg aFloat "fraction" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  (* skipping selector compositeToPoint:operation *)
  (* skipping selector compositeToPoint:fromRect:operation *)
  (* skipping selector compositeToPoint:operation:fraction *)
(*  UNSUPPORTED
  method compositeToPoint  ?fromRect:(rect : (*NSRect*) unsupported option) ?operation:(op : int option) ?fraction:(delta : float option) (point : (*NSPoint*) unsupported) =
    let sel, args = (
      Objc.arg point "compositeToPoint" (*NSPoint*) unsupported
      ++ Objc.opt_arg rect "fromRect" (*NSRect*) unsupported
      ++ Objc.opt_arg op "operation" make_int
      ++ Objc.opt_arg delta "fraction" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method drawAtPoint  ~fromRect:(fromRect : (*NSRect*) unsupported ) ~operation:(op : int ) ~fraction:(delta : float ) (point : (*NSPoint*) unsupported) =
    let sel, args = (
      Objc.arg point "drawAtPoint" (*NSPoint*) unsupported
      ++ Objc.arg fromRect "fromRect" (*NSRect*) unsupported
      ++ Objc.arg op "operation" make_int
      ++ Objc.arg delta "fraction" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method drawInRect  ~fromRect:(fromRect : (*NSRect*) unsupported ) ~operation:(op : int ) ~fraction:(delta : float ) (rect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg rect "drawInRect" (*NSRect*) unsupported
      ++ Objc.arg fromRect "fromRect" (*NSRect*) unsupported
      ++ Objc.arg op "operation" make_int
      ++ Objc.arg delta "fraction" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method drawRepresentation  ~inRect:(rect : (*NSRect*) unsupported ) (imageRep : [`NSImageRep] Objc.t) =
    let sel, args = (
      Objc.arg imageRep "drawRepresentation" make_pointer_from_object
      ++ Objc.arg rect "inRect" (*NSRect*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method recache =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "recache")[])
       : unit)
  method l_TIFFRepresentation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_TIFFRepresentation")[])
       : [`NSData] Objc.id))
  method l_TIFFRepresentationUsingCompression  ~factor:(aFloat : float ) (comp : int) =
    let sel, args = (
      Objc.arg comp "l_TIFFRepresentationUsingCompression" make_int
      ++ Objc.arg aFloat "factor" make_float
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSData] Objc.id))
  method representations =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "representations")[])
       : [`NSArray] Objc.id))
  method addRepresentations (imageReps : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addRepresentations:")
      [make_pointer_from_object imageReps]) : unit)
  method addRepresentation (imageRep : [`NSImageRep] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addRepresentation:")
      [make_pointer_from_object imageRep]) : unit)
  method removeRepresentation (imageRep : [`NSImageRep] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeRepresentation:")
      [make_pointer_from_object imageRep]) : unit)
  method isValid =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isValid")[])
       : bool)
  method lockFocus =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "lockFocus")[])
       : unit)
  method lockFocusOnRepresentation (imageRepresentation : [`NSImageRep] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "lockFocusOnRepresentation:")
      [make_pointer_from_object imageRepresentation]) : unit)
  method unlockFocus =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unlockFocus")[])
       : unit)
  method bestRepresentationForDevice (deviceDescription : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "bestRepresentationForDevice:")
      [make_pointer_from_object deviceDescription]) : [`NSImageRep] Objc.id))
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setFlipped (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFlipped:")
      [make_bool flag]) : unit)
  method isFlipped =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFlipped")[])
       : bool)
  method cancelIncrementalLoad =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "cancelIncrementalLoad")[])
       : unit)
  method setCacheMode (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCacheMode:")
      [make_int mode]) : unit)
  method cacheMode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "cacheMode")[])
       : int)
end
