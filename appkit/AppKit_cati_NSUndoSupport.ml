(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSUndoSupport of NSResponder *)
class virtual methods_NSResponder = object (self)
  method virtual repr : [`NSObject] Objc.id
  method undoManager =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "undoManager")[])
       : [`NSUndoManager] Objc.id))
end
