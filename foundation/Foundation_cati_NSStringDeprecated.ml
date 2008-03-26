(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSStringDeprecated of NSString *)
class virtual methods_NSString = object (self)
  method virtual repr : [`NSObject] Objc.id
  method cString =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "cString")[])
       : string)
  method lossyCString =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "lossyCString")[])
       : string)
  method cStringLength =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "cStringLength")[])
       : int)
  method getCString (bytes : string) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "getCString:")
      [make_string bytes]) : unit)
  method getCString_maxLength  (bytes : string) (maxLength : int) =
    let sel, args = (
      Objc.arg bytes "getCString" make_string
      ++ Objc.arg maxLength "maxLength" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method getCString_maxLength_range_remainingRange  (bytes : string) (maxLength : int) (aRange : NSRange.t) (leftoverRange : (*NSRangePointer*) unsupported) =
    let sel, args = (
      Objc.arg bytes "getCString" make_string
      ++ Objc.arg maxLength "maxLength" make_int
      ++ Objc.arg aRange "range" make_range
      ++ Objc.arg leftoverRange "remainingRange" (*NSRangePointer*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
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
  method initWithContentsOfFile (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfFile:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method initWithContentsOfURL (url : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSObject] Objc.id)
  method initWithCStringNoCopy_length_freeWhenDone  (bytes : string) (length : int) (freeBuffer : bool) =
    let sel, args = (
      Objc.arg bytes "initWithCStringNoCopy" make_string
      ++ Objc.arg length "length" make_int
      ++ Objc.arg freeBuffer "freeWhenDone" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithCString_length  (bytes : string) (length : int) =
    let sel, args = (
      Objc.arg bytes "initWithCString" make_string
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithCString (bytes : string) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithCString:")
      [make_string bytes]) : [`NSObject] Objc.id)
end
