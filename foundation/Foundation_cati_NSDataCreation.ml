(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDataCreation of NSData *)
class virtual methods_NSData = object (self)
  method virtual repr : [`NSObject] Objc.id
(*  UNSUPPORTED
  method initWithBytes_length  (bytes : (*pointer to const void*) unsupported) (length : int) =
    let sel, args = (
      Objc.arg bytes "initWithBytes" (*pointer to const void*) unsupported
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method initWithBytesNoCopy_length  (bytes : [`void] Objc.t) (length : int) =
    let sel, args = (
      Objc.arg bytes "initWithBytesNoCopy" make_pointer_from_object
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithBytesNoCopy_length_freeWhenDone  (bytes : [`void] Objc.t) (length : int) (b : bool) =
    let sel, args = (
      Objc.arg bytes "initWithBytesNoCopy" make_pointer_from_object
      ++ Objc.arg length "length" make_int
      ++ Objc.arg b "freeWhenDone" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfFile_options_error  (path : [`NSString] Objc.t) (readOptionsMask : int) (errorPtr : bool) =
    let sel, args = (
      Objc.arg path "initWithContentsOfFile" make_pointer_from_object
      ++ Objc.arg readOptionsMask "options" make_int
      ++ Objc.arg errorPtr "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfURL_options_error  (url : [`NSURL] Objc.t) (readOptionsMask : int) (errorPtr : bool) =
    let sel, args = (
      Objc.arg url "initWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg readOptionsMask "options" make_int
      ++ Objc.arg errorPtr "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfFile (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfFile:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method initWithContentsOfURL (url : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSObject] Objc.id)
  method initWithContentsOfMappedFile (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfMappedFile:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method initWithData (data : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object data]) : [`NSObject] Objc.id)
end
