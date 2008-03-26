(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSFileHandlePlatformSpecific of NSFileHandle *)
class virtual methods_NSFileHandle = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithNativeHandle_closeOnDealloc  (nativeHandle : [`void] Objc.t) (closeopt : bool) =
    let sel, args = (
      Objc.arg nativeHandle "initWithNativeHandle" make_pointer_from_object
      ++ Objc.arg closeopt "closeOnDealloc" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithNativeHandle (nativeHandle : [`void] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithNativeHandle:")
      [make_pointer_from_object nativeHandle]) : [`NSObject] Objc.id)
  method nativeHandle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nativeHandle")[])
       : [`void] Objc.id))
  method initWithFileDescriptor_closeOnDealloc  (fd : int) (closeopt : bool) =
    let sel, args = (
      Objc.arg fd "initWithFileDescriptor" make_int
      ++ Objc.arg closeopt "closeOnDealloc" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithFileDescriptor (fd : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFileDescriptor:")
      [make_int fd]) : [`NSObject] Objc.id)
  method fileDescriptor =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "fileDescriptor")[])
       : int)
end
