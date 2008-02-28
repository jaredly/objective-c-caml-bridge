(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSFileHandlePlatformSpecific of NSFileHandle *)
class virtual methods_NSFileHandle = object (self)
  method virtual repr : [`NSFileHandle] Objc.id
  method initWithNativeHandle  ?closeOnDealloc:(closeopt : bool option) (nativeHandle : [`void] Objc.t) =
    let sel, args = (
      Objc.arg nativeHandle "initWithNativeHandle" make_pointer_from_object
      ++ Objc.opt_arg closeopt "closeOnDealloc" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithNativeHandle *)
  method nativeHandle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nativeHandle")[])
       : [`void] Objc.id))
  method initWithFileDescriptor  ?closeOnDealloc:(closeopt : bool option) (fd : int) =
    let sel, args = (
      Objc.arg fd "initWithFileDescriptor" make_int
      ++ Objc.opt_arg closeopt "closeOnDealloc" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithFileDescriptor *)
  method fileDescriptor =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "fileDescriptor")[])
       : int)
end
