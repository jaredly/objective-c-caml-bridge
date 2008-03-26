(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSOutputStreamExtensions of NSOutputStream *)
class virtual methods_NSOutputStream = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initToMemory =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initToMemory")[])
       : [`NSObject] Objc.id)
  method initToBuffer_capacity  (buffer : [`uint8_t] Objc.t) (capacity : int) =
    let sel, args = (
      Objc.arg buffer "initToBuffer" make_pointer_from_object
      ++ Objc.arg capacity "capacity" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initToFileAtPath_append  (path : [`NSString] Objc.t) (shouldAppend : bool) =
    let sel, args = (
      Objc.arg path "initToFileAtPath" make_pointer_from_object
      ++ Objc.arg shouldAppend "append" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
