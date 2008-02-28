(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSInputManager *)
class virtual methods = object (self)
  method virtual repr : [`NSInputManager] Objc.id
  method initWithName  ~host:(hostName : [`NSString] Objc.t ) (inputServerName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg inputServerName "initWithName" make_pointer_from_object
      ++ Objc.arg hostName "host" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSInputManager] Objc.id))
  method localizedInputManagerName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localizedInputManagerName")[])
       : [`NSString] Objc.id))
  method markedTextAbandoned (cli : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "markedTextAbandoned:")
      [make_pointer_from_object cli]) : unit)
  method markedTextSelectionChanged  ~client:(cli : [`NSObject] Objc.t ) (newSel : int * int) =
    let sel, args = (
      Objc.arg newSel "markedTextSelectionChanged" make_range
      ++ Objc.arg cli "client" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method wantsToInterpretAllKeystrokes =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "wantsToInterpretAllKeystrokes")[])
       : bool)
  method language =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "language")[])
       : [`NSString] Objc.id))
  method image =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "image")[])
       : [`NSImage] Objc.id))
  method server =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "server")[])
       : [`NSInputServer] Objc.id))
  method wantsToHandleMouseEvents =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "wantsToHandleMouseEvents")[])
       : bool)
  method handleMouseEvent (theMouseEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "handleMouseEvent:")
      [make_pointer_from_object theMouseEvent]) : bool)
  method wantsToDelayTextChangeNotifications =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "wantsToDelayTextChangeNotifications")[])
       : bool)
end
