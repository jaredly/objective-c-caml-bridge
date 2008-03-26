(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCell *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initTextCell (aString : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initTextCell:")
      [make_pointer_from_object aString]) : [`NSObject] Objc.id)
  method initImageCell (image : [`NSImage] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initImageCell:")
      [make_pointer_from_object image]) : [`NSObject] Objc.id)
  method controlView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "controlView")[])
       : [`NSView] Objc.id))
  method setControlView (view : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setControlView:")
      [make_pointer_from_object view]) : unit)
  method _type =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "type")[])
       : int)
  method setType (aType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setType:")
      [make_int aType]) : unit)
  method state =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "state")[])
       : int)
  method setState (value : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setState:")
      [make_int value]) : unit)
  method target =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "target")[])
       : [`NSObject] Objc.id)
  method setTarget (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTarget:")
      [make_pointer_from_object anObject]) : unit)
  method action =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "action")[])
       : selector)
  method setAction (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAction:")
      [make_selector aSelector]) : unit)
  method tag =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tag")[])
       : int)
  method setTag (anInt : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTag:")
      [make_int anInt]) : unit)
  method title =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "title")[])
       : [`NSString] Objc.id))
  method setTitle (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitle:")
      [make_pointer_from_object aString]) : unit)
  method isOpaque =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isOpaque")[])
       : bool)
  method isEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEnabled")[])
       : bool)
  method setEnabled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEnabled:")
      [make_bool flag]) : unit)
  method sendActionOn (mask : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "sendActionOn:")
      [make_int mask]) : int)
  method isContinuous =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isContinuous")[])
       : bool)
  method setContinuous (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContinuous:")
      [make_bool flag]) : unit)
  method isEditable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEditable")[])
       : bool)
  method setEditable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEditable:")
      [make_bool flag]) : unit)
  method isSelectable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSelectable")[])
       : bool)
  method setSelectable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSelectable:")
      [make_bool flag]) : unit)
  method isBordered =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isBordered")[])
       : bool)
  method setBordered (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBordered:")
      [make_bool flag]) : unit)
  method isBezeled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isBezeled")[])
       : bool)
  method setBezeled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBezeled:")
      [make_bool flag]) : unit)
  method isScrollable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isScrollable")[])
       : bool)
  method setScrollable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setScrollable:")
      [make_bool flag]) : unit)
  method isHighlighted =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isHighlighted")[])
       : bool)
  method setHighlighted (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHighlighted:")
      [make_bool flag]) : unit)
  method alignment =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "alignment")[])
       : int)
  method setAlignment (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlignment:")
      [make_int mode]) : unit)
  method wraps =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "wraps")[])
       : bool)
  method setWraps (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWraps:")
      [make_bool flag]) : unit)
  method font =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "font")[])
       : [`NSFont] Objc.id))
  method setFont (fontObj : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFont:")
      [make_pointer_from_object fontObj]) : unit)
  method entryType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "entryType")[])
       : int)
  method setEntryType (aType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEntryType:")
      [make_int aType]) : unit)
  method isEntryAcceptable (aString : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEntryAcceptable:")
      [make_pointer_from_object aString]) : bool)
  method setFloatingPointFormat_left_right  (autoRange : bool) (leftDigits : int) (rightDigits : int) =
    let sel, args = (
      Objc.arg autoRange "setFloatingPointFormat" make_bool
      ++ Objc.arg leftDigits "left" make_int
      ++ Objc.arg rightDigits "right" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method keyEquivalent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyEquivalent")[])
       : [`NSString] Objc.id))
  method setFormatter (newFormatter : [`NSFormatter] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFormatter:")
      [make_pointer_from_object newFormatter]) : unit)
  method formatter =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "formatter")[])
       : [`NSObject] Objc.id)
  method objectValue =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectValue")[])
       : [`NSObject] Objc.id)
  method setObjectValue (obj : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setObjectValue:")
      [make_pointer_from_object obj]) : unit)
  method hasValidObjectValue =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasValidObjectValue")[])
       : bool)
  method stringValue =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringValue")[])
       : [`NSString] Objc.id))
  method setStringValue (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setStringValue:")
      [make_pointer_from_object aString]) : unit)
  method compare (otherCell : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "compare:")
      [make_pointer_from_object otherCell]) : int)
  method intValue =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "intValue")[])
       : int)
  method setIntValue (anInt : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIntValue:")
      [make_int anInt]) : unit)
  method floatValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "floatValue")[])
       : float)
  method setFloatValue (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFloatValue:")
      [make_float aFloat]) : unit)
  method doubleValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "doubleValue")[])
       : float)
  method setDoubleValue (aDouble : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDoubleValue:")
      [make_float aDouble]) : unit)
  method takeIntValueFrom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeIntValueFrom:")
      [make_pointer_from_object sender]) : unit)
  method takeFloatValueFrom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeFloatValueFrom:")
      [make_pointer_from_object sender]) : unit)
  method takeDoubleValueFrom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeDoubleValueFrom:")
      [make_pointer_from_object sender]) : unit)
  method takeStringValueFrom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeStringValueFrom:")
      [make_pointer_from_object sender]) : unit)
  method takeObjectValueFrom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeObjectValueFrom:")
      [make_pointer_from_object sender]) : unit)
  method image =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "image")[])
       : [`NSImage] Objc.id))
  method setImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImage:")
      [make_pointer_from_object image]) : unit)
  method setControlTint (controlTint : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setControlTint:")
      [make_int controlTint]) : unit)
  method controlTint =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "controlTint")[])
       : int)
  method setControlSize (size : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setControlSize:")
      [make_int size]) : unit)
  method controlSize =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "controlSize")[])
       : int)
  method representedObject =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "representedObject")[])
       : [`NSObject] Objc.id)
  method setRepresentedObject (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRepresentedObject:")
      [make_pointer_from_object anObject]) : unit)
  method cellAttribute (aParameter : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "cellAttribute:")
      [make_int aParameter]) : int)
  method setCellAttribute_to  (aParameter : int) (value : int) =
    let sel, args = (
      Objc.arg aParameter "setCellAttribute" make_int
      ++ Objc.arg value "to" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method imageRectForBounds (theRect : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "imageRectForBounds:")
      [make_rect theRect]) : NSRect.t)
  method titleRectForBounds (theRect : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "titleRectForBounds:")
      [make_rect theRect]) : NSRect.t)
  method drawingRectForBounds (theRect : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "drawingRectForBounds:")
      [make_rect theRect]) : NSRect.t)
  method cellSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "cellSize")[])
       : NSSize.t)
  method cellSizeForBounds (aRect : NSRect.t) =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "cellSizeForBounds:")
      [make_rect aRect]) : NSSize.t)
  method highlightColorWithFrame_inView  (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg cellFrame "highlightColorWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
  method calcDrawInfo (aRect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "calcDrawInfo:")
      [make_rect aRect]) : unit)
  method setUpFieldEditorAttributes (textObj : [`NSText] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "setUpFieldEditorAttributes:")
      [make_pointer_from_object textObj]) : [`NSText] Objc.id))
  method drawInteriorWithFrame_inView  (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg cellFrame "drawInteriorWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method drawWithFrame_inView  (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg cellFrame "drawWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method highlight_withFrame_inView  (flag : bool) (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg flag "highlight" make_bool
      ++ Objc.arg cellFrame "withFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method mouseDownFlags =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "mouseDownFlags")[])
       : int)
  method getPeriodicDelay_interval  (delay : [`float] Objc.t) (interval : [`float] Objc.t) =
    let sel, args = (
      Objc.arg delay "getPeriodicDelay" make_pointer_from_object
      ++ Objc.arg interval "interval" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method startTrackingAt_inView  (startPoint : NSPoint.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg startPoint "startTrackingAt" make_point
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method continueTracking_at_inView  (lastPoint : NSPoint.t) (currentPoint : NSPoint.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg lastPoint "continueTracking" make_point
      ++ Objc.arg currentPoint "at" make_point
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method stopTracking_at_inView_mouseIsUp  (lastPoint : NSPoint.t) (stopPoint : NSPoint.t) (controlView : [`NSView] Objc.t) (flag : bool) =
    let sel, args = (
      Objc.arg lastPoint "stopTracking" make_point
      ++ Objc.arg stopPoint "at" make_point
      ++ Objc.arg controlView "inView" make_pointer_from_object
      ++ Objc.arg flag "mouseIsUp" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method trackMouse_inRect_ofView_untilMouseUp  (theEvent : [`NSEvent] Objc.t) (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) (flag : bool) =
    let sel, args = (
      Objc.arg theEvent "trackMouse" make_pointer_from_object
      ++ Objc.arg cellFrame "inRect" make_rect
      ++ Objc.arg controlView "ofView" make_pointer_from_object
      ++ Objc.arg flag "untilMouseUp" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method editWithFrame_inView_editor_delegate_event  (aRect : NSRect.t) (controlView : [`NSView] Objc.t) (textObj : [`NSText] Objc.t) (anObject : [`NSObject] Objc.t) (theEvent : [`NSEvent] Objc.t) =
    let sel, args = (
      Objc.arg aRect "editWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
      ++ Objc.arg textObj "editor" make_pointer_from_object
      ++ Objc.arg anObject "delegate" make_pointer_from_object
      ++ Objc.arg theEvent "event" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method selectWithFrame_inView_editor_delegate_start_length  (aRect : NSRect.t) (controlView : [`NSView] Objc.t) (textObj : [`NSText] Objc.t) (anObject : [`NSObject] Objc.t) (selStart : int) (selLength : int) =
    let sel, args = (
      Objc.arg aRect "selectWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
      ++ Objc.arg textObj "editor" make_pointer_from_object
      ++ Objc.arg anObject "delegate" make_pointer_from_object
      ++ Objc.arg selStart "start" make_int
      ++ Objc.arg selLength "length" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method endEditing (textObj : [`NSText] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "endEditing:")
      [make_pointer_from_object textObj]) : unit)
  method resetCursorRect_inView  (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg cellFrame "resetCursorRect" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setMenu (aMenu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMenu:")
      [make_pointer_from_object aMenu]) : unit)
  method menu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "menu")[])
       : [`NSMenu] Objc.id))
  method menuForEvent_inRect_ofView  (event : [`NSEvent] Objc.t) (cellFrame : NSRect.t) (view : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg event "menuForEvent" make_pointer_from_object
      ++ Objc.arg cellFrame "inRect" make_rect
      ++ Objc.arg view "ofView" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSMenu] Objc.id))
  method setSendsActionOnEndEditing (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSendsActionOnEndEditing:")
      [make_bool flag]) : unit)
  method sendsActionOnEndEditing =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "sendsActionOnEndEditing")[])
       : bool)
  method baseWritingDirection =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "baseWritingDirection")[])
       : int)
  method setBaseWritingDirection (writingDirection : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBaseWritingDirection:")
      [make_int writingDirection]) : unit)
  method setLineBreakMode (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLineBreakMode:")
      [make_int mode]) : unit)
  method lineBreakMode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "lineBreakMode")[])
       : int)
  method setAllowsUndo (allowsUndo : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsUndo:")
      [make_bool allowsUndo]) : unit)
  method allowsUndo =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsUndo")[])
       : bool)
end
