(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSButtonCell *)
class virtual methods = object (self)
  method virtual repr : [`NSButtonCell] Objc.id
  method title =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "title")[])
       : [`NSString] Objc.id))
  method setTitle (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitle:")
      [make_pointer_from_object aString]) : unit)
  method alternateTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "alternateTitle")[])
       : [`NSString] Objc.id))
  method setAlternateTitle (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlternateTitle:")
      [make_pointer_from_object aString]) : unit)
  method alternateImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "alternateImage")[])
       : [`NSImage] Objc.id))
  method setAlternateImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlternateImage:")
      [make_pointer_from_object image]) : unit)
(*  UNSUPPORTED
  method imagePosition =
    ((*NSCellImagePosition*) unsupported (Objc.invoke (*NSCellImagePosition*) Objc.tag_unsupported self#repr (Selector.find "imagePosition")[])
       : (*NSCellImagePosition*) unsupported)

*)
(*  UNSUPPORTED
  method setImagePosition (aPosition : (*NSCellImagePosition*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImagePosition:")
      [(*NSCellImagePosition*) unsupported aPosition]) : unit)

*)
  method highlightsBy =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "highlightsBy")[])
       : int)
  method setHighlightsBy (aType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHighlightsBy:")
      [make_int aType]) : unit)
  method showsStateBy =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "showsStateBy")[])
       : int)
  method setShowsStateBy (aType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowsStateBy:")
      [make_int aType]) : unit)
  method setButtonType (aType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setButtonType:")
      [make_int aType]) : unit)
  method isOpaque =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isOpaque")[])
       : bool)
  method setFont (fontObj : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFont:")
      [make_pointer_from_object fontObj]) : unit)
  method isTransparent =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isTransparent")[])
       : bool)
  method setTransparent (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTransparent:")
      [make_bool flag]) : unit)
  method setPeriodicDelay  ~interval:(interval : float ) (delay : float) =
    let sel, args = (
      Objc.arg delay "setPeriodicDelay" make_float
      ++ Objc.arg interval "interval" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method getPeriodicDelay  ~interval:(interval : [`float] Objc.t ) (delay : [`float] Objc.t) =
    let sel, args = (
      Objc.arg delay "getPeriodicDelay" make_pointer_from_object
      ++ Objc.arg interval "interval" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method keyEquivalent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyEquivalent")[])
       : [`NSString] Objc.id))
  method setKeyEquivalent (aKeyEquivalent : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setKeyEquivalent:")
      [make_pointer_from_object aKeyEquivalent]) : unit)
  method keyEquivalentModifierMask =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "keyEquivalentModifierMask")[])
       : int)
  method setKeyEquivalentModifierMask (mask : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setKeyEquivalentModifierMask:")
      [make_int mask]) : unit)
  method keyEquivalentFont =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyEquivalentFont")[])
       : [`NSFont] Objc.id))
  method setKeyEquivalentFont (fontObj : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setKeyEquivalentFont:")
      [make_pointer_from_object fontObj]) : unit)
  (* skipping selector setKeyEquivalentFont:size *)
  method performClick (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "performClick:")
      [make_pointer_from_object sender]) : unit)
(*  UNSUPPORTED
  method drawImage  ~withFrame:(frame : (*NSRect*) unsupported ) ~inView:(controlView : [`NSView] Objc.t ) (image : [`NSImage] Objc.t) =
    let sel, args = (
      Objc.arg image "drawImage" make_pointer_from_object
      ++ Objc.arg frame "withFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method drawTitle  ~withFrame:(frame : (*NSRect*) unsupported ) ~inView:(controlView : [`NSView] Objc.t ) (title : [`NSAttributedString] Objc.t) =
    let sel, args = (
      Objc.arg title "drawTitle" make_pointer_from_object
      ++ Objc.arg frame "withFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method drawBezelWithFrame  ~inView:(controlView : [`NSView] Objc.t ) (frame : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg frame "drawBezelWithFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
end
