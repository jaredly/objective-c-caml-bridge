(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDirectoryEnumerator *)
class virtual methods = object (self)
  method virtual repr : [`NSDirectoryEnumerator] Objc.id
  method fileAttributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileAttributes")[])
       : [`NSDictionary] Objc.id))
  method directoryAttributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "directoryAttributes")[])
       : [`NSDictionary] Objc.id))
  method skipDescendents =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "skipDescendents")[])
       : unit)
end
