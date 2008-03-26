(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPipe *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method fileHandleForReading =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileHandleForReading")[])
       : [`NSFileHandle] Objc.id))
  method fileHandleForWriting =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileHandleForWriting")[])
       : [`NSFileHandle] Objc.id))
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
end
