(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSWindowController *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithWindow (window : [`NSWindow] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithWindow:")
      [make_pointer_from_object window]) : [`NSObject] Objc.id)
  method initWithWindowNibName (windowNibName : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithWindowNibName:")
      [make_pointer_from_object windowNibName]) : [`NSObject] Objc.id)
  method initWithWindowNibName_owner  (windowNibName : [`NSString] Objc.t) (owner : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg windowNibName "initWithWindowNibName" make_pointer_from_object
      ++ Objc.arg owner "owner" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithWindowNibPath_owner  (windowNibPath : [`NSString] Objc.t) (owner : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg windowNibPath "initWithWindowNibPath" make_pointer_from_object
      ++ Objc.arg owner "owner" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method windowNibName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowNibName")[])
       : [`NSString] Objc.id))
  method windowNibPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowNibPath")[])
       : [`NSString] Objc.id))
  method owner =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "owner")[])
       : [`NSObject] Objc.id)
  method setWindowFrameAutosaveName (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWindowFrameAutosaveName:")
      [make_pointer_from_object name]) : unit)
  method windowFrameAutosaveName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowFrameAutosaveName")[])
       : [`NSString] Objc.id))
  method setShouldCascadeWindows (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShouldCascadeWindows:")
      [make_bool flag]) : unit)
  method shouldCascadeWindows =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldCascadeWindows")[])
       : bool)
  method document =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "document")[])
       : [`NSObject] Objc.id)
  method setDocument (document : [`NSDocument] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDocument:")
      [make_pointer_from_object document]) : unit)
  method setDocumentEdited (dirtyFlag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDocumentEdited:")
      [make_bool dirtyFlag]) : unit)
  method setShouldCloseDocument (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShouldCloseDocument:")
      [make_bool flag]) : unit)
  method shouldCloseDocument =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldCloseDocument")[])
       : bool)
  method setWindow (window : [`NSWindow] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWindow:")
      [make_pointer_from_object window]) : unit)
  method window =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "window")[])
       : [`NSWindow] Objc.id))
  method synchronizeWindowTitleWithDocumentName =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "synchronizeWindowTitleWithDocumentName")[])
       : unit)
  method windowTitleForDocumentDisplayName (displayName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowTitleForDocumentDisplayName:")
      [make_pointer_from_object displayName]) : [`NSString] Objc.id))
  method close =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "close")[])
       : unit)
  method showWindow (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "showWindow:")
      [make_pointer_from_object sender]) : unit)
  method isWindowLoaded =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isWindowLoaded")[])
       : bool)
  method windowDidLoad =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "windowDidLoad")[])
       : unit)
  method windowWillLoad =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "windowWillLoad")[])
       : unit)
  method loadWindow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "loadWindow")[])
       : unit)
end
