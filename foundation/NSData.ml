(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSMappedRead = 1L
let _NSUncachedRead = 2L
let _NSAtomicWrite = 1L


class virtual methods = object
  inherit Foundation_cati_NSDataCreation.methods_NSData
  inherit Foundation_cati_NSExtendedData.methods_NSData
  inherit Im_NSData.methods
end

class t = fun (r :[`NSData] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSData *)
let c = Classes.find "NSData"
let _new()= (Objc.objcnew c : [`NSData] id)
let alloc() = (Objc.objcalloc c : [`NSData] id)
(* class methods for category NSDataCreation of NSData *)
let data () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "data")[])
       : [`NSData] Objc.id))
(*  UNSUPPORTED
let dataWithBytes_length  (bytes : (*pointer to const void*) unsupported) (length : int) =
    let sel, args = (
      Objc.arg bytes "dataWithBytes" (*pointer to const void*) unsupported
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))

*)
let dataWithBytesNoCopy_length  (bytes : [`void] Objc.t) (length : int) =
    let sel, args = (
      Objc.arg bytes "dataWithBytesNoCopy" make_pointer_from_object
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))
let dataWithBytesNoCopy_length_freeWhenDone  (bytes : [`void] Objc.t) (length : int) (b : bool) =
    let sel, args = (
      Objc.arg bytes "dataWithBytesNoCopy" make_pointer_from_object
      ++ Objc.arg length "length" make_int
      ++ Objc.arg b "freeWhenDone" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))
let dataWithContentsOfFile_options_error  (path : [`NSString] Objc.t) (readOptionsMask : int) (errorPtr : bool) =
    let sel, args = (
      Objc.arg path "dataWithContentsOfFile" make_pointer_from_object
      ++ Objc.arg readOptionsMask "options" make_int
      ++ Objc.arg errorPtr "error" make_error
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))
let dataWithContentsOfURL_options_error  (url : [`NSURL] Objc.t) (readOptionsMask : int) (errorPtr : bool) =
    let sel, args = (
      Objc.arg url "dataWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg readOptionsMask "options" make_int
      ++ Objc.arg errorPtr "error" make_error
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))
let dataWithContentsOfFile (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dataWithContentsOfFile:")
      [make_pointer_from_object path]) : [`NSData] Objc.id))
let dataWithContentsOfURL (url : [`NSURL] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dataWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSData] Objc.id))
let dataWithContentsOfMappedFile (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dataWithContentsOfMappedFile:")
      [make_pointer_from_object path]) : [`NSData] Objc.id))
let dataWithData (data : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dataWithData:")
      [make_pointer_from_object data]) : [`NSData] Objc.id))
(* class methods for category NSExtendedData of NSData *)
