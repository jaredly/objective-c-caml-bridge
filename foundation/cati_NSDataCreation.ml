(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDataCreation of NSData *)
class virtual methods_NSData = object (self)
  method virtual repr : [`NSData] Objc.id
(*  UNSUPPORTED
  method initWithBytes  ~length:(length : int ) (bytes : (*pointer to const void*) unsupported) =
    let sel, args = (
      Objc.arg bytes "initWithBytes" (*pointer to const void*) unsupported
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  (* skipping selector initWithBytesNoCopy:length *)
  method initWithBytesNoCopy  ~length:(length : int ) ?freeWhenDone:(b : bool option) (bytes : [`void] Objc.t) =
    let sel, args = (
      Objc.arg bytes "initWithBytesNoCopy" make_pointer_from_object
      ++ Objc.arg length "length" make_int
      ++ Objc.opt_arg b "freeWhenDone" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfFile  ?options:(readOptionsMask : int option) ?error:(errorPtr : bool option) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "initWithContentsOfFile" make_pointer_from_object
      ++ Objc.opt_arg readOptionsMask "options" make_int
      ++ Objc.opt_arg errorPtr "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfURL  ?options:(readOptionsMask : int option) ?error:(errorPtr : bool option) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "initWithContentsOfURL" make_pointer_from_object
      ++ Objc.opt_arg readOptionsMask "options" make_int
      ++ Objc.opt_arg errorPtr "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithContentsOfFile *)
  (* skipping selector initWithContentsOfURL *)
  method initWithContentsOfMappedFile (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfMappedFile:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method initWithData (data : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object data]) : [`NSObject] Objc.id)
end
