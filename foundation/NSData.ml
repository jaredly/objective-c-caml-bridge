(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSMappedRead = 1L
let _NSUncachedRead = 2L
let _NSAtomicWrite = 1L


class t = fun (r :[`NSData] id) -> object
  inherit Cati_NSDataCreation.methods_NSData
  inherit Cati_NSExtendedData.methods_NSData
  inherit Im_NSData.methods
  method repr = r
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
let dataWithBytes  ~length:(length : int ) (bytes : (*pointer to const void*) unsupported) =
    let sel, args = (
      Objc.arg bytes "dataWithBytes" (*pointer to const void*) unsupported
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))

*)
  (* skipping selector dataWithBytesNoCopy:length *)
let dataWithBytesNoCopy  ~length:(length : int ) ?freeWhenDone:(b : bool option) (bytes : [`void] Objc.t) =
    let sel, args = (
      Objc.arg bytes "dataWithBytesNoCopy" make_pointer_from_object
      ++ Objc.arg length "length" make_int
      ++ Objc.opt_arg b "freeWhenDone" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))
let dataWithContentsOfFile  ?options:(readOptionsMask : int option) ?error:(errorPtr : bool option) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "dataWithContentsOfFile" make_pointer_from_object
      ++ Objc.opt_arg readOptionsMask "options" make_int
      ++ Objc.opt_arg errorPtr "error" make_error
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))
let dataWithContentsOfURL  ?options:(readOptionsMask : int option) ?error:(errorPtr : bool option) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "dataWithContentsOfURL" make_pointer_from_object
      ++ Objc.opt_arg readOptionsMask "options" make_int
      ++ Objc.opt_arg errorPtr "error" make_error
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))
  (* skipping selector dataWithContentsOfFile *)
  (* skipping selector dataWithContentsOfURL *)
let dataWithContentsOfMappedFile (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dataWithContentsOfMappedFile:")
      [make_pointer_from_object path]) : [`NSData] Objc.id))
let dataWithData (data : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dataWithData:")
      [make_pointer_from_object data]) : [`NSData] Objc.id))
(* class methods for category NSExtendedData of NSData *)
