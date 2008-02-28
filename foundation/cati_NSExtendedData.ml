(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedData of NSData *)
class virtual methods_NSData = object (self)
  method virtual repr : [`NSData] Objc.id
  method description =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "description")[])
       : [`NSString] Objc.id))
  (* skipping selector getBytes *)
  method getBytes  ?length:(length : int option) (buffer : [`void] Objc.t) =
    let sel, args = (
      Objc.arg buffer "getBytes" make_pointer_from_object
      ++ Objc.opt_arg length "length" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  (* skipping selector getBytes:range *)
  method isEqualToData (other : [`NSData] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToData:")
      [make_pointer_from_object other]) : bool)
  method subdataWithRange (range : int * int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "subdataWithRange:")
      [make_range range]) : [`NSData] Objc.id))
  (* skipping selector writeToFile:atomically *)
  (* skipping selector writeToURL:atomically *)
  method writeToFile  ~options:(writeOptionsMask : int ) ~error:(errorPtr : bool ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "writeToFile" make_pointer_from_object
      ++ Objc.arg writeOptionsMask "options" make_int
      ++ Objc.arg errorPtr "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToURL  ~options:(writeOptionsMask : int ) ~error:(errorPtr : bool ) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "writeToURL" make_pointer_from_object
      ++ Objc.arg writeOptionsMask "options" make_int
      ++ Objc.arg errorPtr "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
