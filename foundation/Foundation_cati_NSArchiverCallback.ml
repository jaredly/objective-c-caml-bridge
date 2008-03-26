(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSArchiverCallback of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method classForArchiver =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classForArchiver")[])
       : [`NSObject] Objc.id)
  method replacementObjectForArchiver (archiver : [`NSArchiver] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "replacementObjectForArchiver:")
      [make_pointer_from_object archiver]) : [`NSObject] Objc.id)
end
