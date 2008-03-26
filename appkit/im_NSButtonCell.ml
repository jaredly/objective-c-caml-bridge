(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSButtonCell *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
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
  method imagePosition =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "imagePosition")[])
       : int)
  method setImagePosition (aPosition : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImagePosition:")
      [make_int aPosition]) : unit)
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
  method setPeriodicDelay_interval  (delay : float) (interval : float) =
    let sel, args = (
      Objc.arg delay "setPeriodicDelay" make_float
      ++ Objc.arg interval "interval" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method getPeriodicDelay_interval  (delay : [`float] Objc.t) (interval : [`float] Objc.t) =
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
  method setKeyEquivalentFont_size  (fontName : [`NSString] Objc.t) (fontSize : float) =
    let sel, args = (
      Objc.arg fontName "setKeyEquivalentFont" make_pointer_from_object
      ++ Objc.arg fontSize "size" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method performClick (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "performClick:")
      [make_pointer_from_object sender]) : unit)
  method drawImage_withFrame_inView  (image : [`NSImage] Objc.t) (frame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg image "drawImage" make_pointer_from_object
      ++ Objc.arg frame "withFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method drawTitle_withFrame_inView  (title : [`NSAttributedString] Objc.t) (frame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg title "drawTitle" make_pointer_from_object
      ++ Objc.arg frame "withFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find_list sel) args)
       : NSRect.t)
  method drawBezelWithFrame_inView  (frame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg frame "drawBezelWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
