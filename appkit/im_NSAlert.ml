(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSAlert *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setMessageText (messageText : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMessageText:")
      [make_pointer_from_object messageText]) : unit)
  method setInformativeText (informativeText : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setInformativeText:")
      [make_pointer_from_object informativeText]) : unit)
  method messageText =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "messageText")[])
       : [`NSString] Objc.id))
  method informativeText =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "informativeText")[])
       : [`NSString] Objc.id))
  method setIcon (icon : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIcon:")
      [make_pointer_from_object icon]) : unit)
  method icon =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "icon")[])
       : [`NSImage] Objc.id))
  method addButtonWithTitle (title : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "addButtonWithTitle:")
      [make_pointer_from_object title]) : [`NSButton] Objc.id))
  method buttons =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "buttons")[])
       : [`NSArray] Objc.id))
  method setShowsHelp (showsHelp : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowsHelp:")
      [make_bool showsHelp]) : unit)
  method showsHelp =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "showsHelp")[])
       : bool)
  method setHelpAnchor (anchor : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHelpAnchor:")
      [make_pointer_from_object anchor]) : unit)
  method helpAnchor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "helpAnchor")[])
       : [`NSString] Objc.id))
  method setAlertStyle (style : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlertStyle:")
      [make_int style]) : unit)
  method alertStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "alertStyle")[])
       : int)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method runModal =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "runModal")[])
       : int)
  method beginSheetModalForWindow_modalDelegate_didEndSelector_contextInfo  (window : [`NSWindow] Objc.t) (delegate : [`NSObject] Objc.t) (didEndSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg window "beginSheetModalForWindow" make_pointer_from_object
      ++ Objc.arg delegate "modalDelegate" make_pointer_from_object
      ++ Objc.arg didEndSelector "didEndSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method window =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "window")[])
       : [`NSObject] Objc.id)
end
