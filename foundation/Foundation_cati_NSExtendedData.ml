(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedData of NSData *)
class virtual methods_NSData = object (self)
  method virtual repr : [`NSObject] Objc.id
  method description =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "description")[])
       : [`NSString] Objc.id))
  method getBytes (buffer : [`void] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "getBytes:")
      [make_pointer_from_object buffer]) : unit)
  method getBytes_length  (buffer : [`void] Objc.t) (length : int) =
    let sel, args = (
      Objc.arg buffer "getBytes" make_pointer_from_object
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method getBytes_range  (buffer : [`void] Objc.t) (range : NSRange.t) =
    let sel, args = (
      Objc.arg buffer "getBytes" make_pointer_from_object
      ++ Objc.arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method isEqualToData (other : [`NSData] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToData:")
      [make_pointer_from_object other]) : bool)
  method subdataWithRange (range : NSRange.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "subdataWithRange:")
      [make_range range]) : [`NSData] Objc.id))
  method writeToFile_atomically  (path : [`NSString] Objc.t) (useAuxiliaryFile : bool) =
    let sel, args = (
      Objc.arg path "writeToFile" make_pointer_from_object
      ++ Objc.arg useAuxiliaryFile "atomically" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToURL_atomically  (url : [`NSURL] Objc.t) (atomically : bool) =
    let sel, args = (
      Objc.arg url "writeToURL" make_pointer_from_object
      ++ Objc.arg atomically "atomically" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToFile_options_error  (path : [`NSString] Objc.t) (writeOptionsMask : int) (errorPtr : bool) =
    let sel, args = (
      Objc.arg path "writeToFile" make_pointer_from_object
      ++ Objc.arg writeOptionsMask "options" make_int
      ++ Objc.arg errorPtr "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToURL_options_error  (url : [`NSURL] Objc.t) (writeOptionsMask : int) (errorPtr : bool) =
    let sel, args = (
      Objc.arg url "writeToURL" make_pointer_from_object
      ++ Objc.arg writeOptionsMask "options" make_int
      ++ Objc.arg errorPtr "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
