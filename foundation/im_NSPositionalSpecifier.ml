(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPositionalSpecifier *)
class virtual methods = object (self)
  method virtual repr : [`NSPositionalSpecifier] Objc.id
  method initWithPosition  ~objectSpecifier:(specifier : [`NSScriptObjectSpecifier] Objc.t ) (position : int) =
    let sel, args = (
      Objc.arg position "initWithPosition" make_int
      ++ Objc.arg specifier "objectSpecifier" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method setInsertionClassDescription (classDescription : [`NSScriptClassDescription] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setInsertionClassDescription:")
      [make_pointer_from_object classDescription]) : unit)
  method evaluate =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "evaluate")[])
       : unit)
  method insertionContainer =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "insertionContainer")[])
       : [`NSObject] Objc.id)
  method insertionKey =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "insertionKey")[])
       : [`NSString] Objc.id))
  method insertionIndex =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "insertionIndex")[])
       : int)
  method insertionReplaces =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "insertionReplaces")[])
       : bool)
end
