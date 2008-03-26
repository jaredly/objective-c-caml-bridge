(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSMutableDictionaryCreation of NSMutableDictionary *)
class virtual methods_NSMutableDictionary = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithCapacity (numItems : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithCapacity:")
      [make_int numItems]) : [`NSObject] Objc.id)
end
