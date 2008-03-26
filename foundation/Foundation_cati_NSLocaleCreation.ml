(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSLocaleCreation of NSLocale *)
class virtual methods_NSLocale = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithLocaleIdentifier (string : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithLocaleIdentifier:")
      [make_pointer_from_object string]) : [`NSObject] Objc.id)
end
