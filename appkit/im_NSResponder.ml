(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSResponder *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method nextResponder =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nextResponder")[])
       : [`NSResponder] Objc.id))
  method setNextResponder (aResponder : [`NSResponder] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNextResponder:")
      [make_pointer_from_object aResponder]) : unit)
  method tryToPerform_with  (anAction : selector) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg anAction "tryToPerform" make_selector
      ++ Objc.arg anObject "with" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method performKeyEquivalent (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "performKeyEquivalent:")
      [make_pointer_from_object theEvent]) : bool)
  method validRequestorForSendType_returnType  (sendType : [`NSString] Objc.t) (returnType : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg sendType "validRequestorForSendType" make_pointer_from_object
      ++ Objc.arg returnType "returnType" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method mouseDown (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseDown:")
      [make_pointer_from_object theEvent]) : unit)
  method rightMouseDown (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "rightMouseDown:")
      [make_pointer_from_object theEvent]) : unit)
  method otherMouseDown (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "otherMouseDown:")
      [make_pointer_from_object theEvent]) : unit)
  method mouseUp (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseUp:")
      [make_pointer_from_object theEvent]) : unit)
  method rightMouseUp (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "rightMouseUp:")
      [make_pointer_from_object theEvent]) : unit)
  method otherMouseUp (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "otherMouseUp:")
      [make_pointer_from_object theEvent]) : unit)
  method mouseMoved (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseMoved:")
      [make_pointer_from_object theEvent]) : unit)
  method mouseDragged (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseDragged:")
      [make_pointer_from_object theEvent]) : unit)
  method scrollWheel (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollWheel:")
      [make_pointer_from_object theEvent]) : unit)
  method rightMouseDragged (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "rightMouseDragged:")
      [make_pointer_from_object theEvent]) : unit)
  method otherMouseDragged (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "otherMouseDragged:")
      [make_pointer_from_object theEvent]) : unit)
  method mouseEntered (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseEntered:")
      [make_pointer_from_object theEvent]) : unit)
  method mouseExited (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseExited:")
      [make_pointer_from_object theEvent]) : unit)
  method keyDown (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "keyDown:")
      [make_pointer_from_object theEvent]) : unit)
  method keyUp (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "keyUp:")
      [make_pointer_from_object theEvent]) : unit)
  method flagsChanged (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "flagsChanged:")
      [make_pointer_from_object theEvent]) : unit)
  method tabletPoint (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "tabletPoint:")
      [make_pointer_from_object theEvent]) : unit)
  method tabletProximity (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "tabletProximity:")
      [make_pointer_from_object theEvent]) : unit)
  method noResponderFor (eventSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "noResponderFor:")
      [make_selector eventSelector]) : unit)
  method acceptsFirstResponder =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "acceptsFirstResponder")[])
       : bool)
  method becomeFirstResponder =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "becomeFirstResponder")[])
       : bool)
  method resignFirstResponder =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "resignFirstResponder")[])
       : bool)
  method interpretKeyEvents (eventArray : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "interpretKeyEvents:")
      [make_pointer_from_object eventArray]) : unit)
  method flushBufferedKeyEvents =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "flushBufferedKeyEvents")[])
       : unit)
  method setMenu (menu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMenu:")
      [make_pointer_from_object menu]) : unit)
  method menu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "menu")[])
       : [`NSMenu] Objc.id))
  method showContextHelp (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "showContextHelp:")
      [make_pointer_from_object sender]) : unit)
  method helpRequested (eventPtr : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "helpRequested:")
      [make_pointer_from_object eventPtr]) : unit)
  method shouldBeTreatedAsInkEvent (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldBeTreatedAsInkEvent:")
      [make_pointer_from_object theEvent]) : bool)
end
