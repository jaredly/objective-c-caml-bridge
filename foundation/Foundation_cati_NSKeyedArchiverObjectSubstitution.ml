(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSKeyedArchiverObjectSubstitution of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method classForKeyedArchiver =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classForKeyedArchiver")[])
       : [`NSObject] Objc.id)
  method replacementObjectForKeyedArchiver (archiver : [`NSKeyedArchiver] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "replacementObjectForKeyedArchiver:")
      [make_pointer_from_object archiver]) : [`NSObject] Objc.id)
end
