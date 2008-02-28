(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFileHandle *)
class virtual methods = object (self)
  method virtual repr : [`NSFileHandle] Objc.id
  method availableData =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "availableData")[])
       : [`NSData] Objc.id))
  method readDataToEndOfFile =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "readDataToEndOfFile")[])
       : [`NSData] Objc.id))
  method readDataOfLength (length : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "readDataOfLength:")
      [make_int length]) : [`NSData] Objc.id))
  method writeData (data : [`NSData] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "writeData:")
      [make_pointer_from_object data]) : unit)
  method offsetInFile =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "offsetInFile")[])
       : int64)
  method seekToEndOfFile =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "seekToEndOfFile")[])
       : int64)
  method seekToFileOffset (offset : int64) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "seekToFileOffset:")
      [make_int64 offset]) : unit)
  method truncateFileAtOffset (offset : int64) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "truncateFileAtOffset:")
      [make_int64 offset]) : unit)
  method synchronizeFile =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "synchronizeFile")[])
       : unit)
  method closeFile =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "closeFile")[])
       : unit)
end
