(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSpeechRecognizer *)
class virtual methods = object (self)
  method virtual repr : [`NSSpeechRecognizer] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method startListening =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "startListening")[])
       : unit)
  method stopListening =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stopListening")[])
       : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method commands =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "commands")[])
       : [`NSArray] Objc.id))
  method setCommands (commands : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCommands:")
      [make_pointer_from_object commands]) : unit)
  method displayedCommandsTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "displayedCommandsTitle")[])
       : [`NSString] Objc.id))
  method setDisplayedCommandsTitle (title : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDisplayedCommandsTitle:")
      [make_pointer_from_object title]) : unit)
  method listensInForegroundOnly =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "listensInForegroundOnly")[])
       : bool)
  method setListensInForegroundOnly (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setListensInForegroundOnly:")
      [make_bool flag]) : unit)
  method blocksOtherRecognizers =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "blocksOtherRecognizers")[])
       : bool)
  method setBlocksOtherRecognizers (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBlocksOtherRecognizers:")
      [make_bool flag]) : unit)
end
