(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSStringDeprecated of NSString *)
class virtual methods_NSString = object (self)
  method virtual repr : [`NSString] Objc.id
  method cString =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "cString")[])
       : string)
  method lossyCString =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "lossyCString")[])
       : string)
  method cStringLength =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "cStringLength")[])
       : int)
  (* skipping selector getCString *)
  (* skipping selector getCString:maxLength *)
(*  UNSUPPORTED
  method getCString  ?maxLength:(maxLength : int option) ?range:(aRange : (int * int) option) ?remainingRange:(leftoverRange : (*NSRangePointer*) unsupported option) (bytes : string) =
    let sel, args = (
      Objc.arg bytes "getCString" make_string
      ++ Objc.opt_arg maxLength "maxLength" make_int
      ++ Objc.opt_arg aRange "range" make_range
      ++ Objc.opt_arg leftoverRange "remainingRange" (*NSRangePointer*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  (* skipping selector writeToFile:atomically *)
  (* skipping selector writeToURL:atomically *)
  (* skipping selector initWithContentsOfFile *)
  (* skipping selector initWithContentsOfURL *)
  method initWithCStringNoCopy  ~length:(length : int ) ~freeWhenDone:(freeBuffer : bool ) (bytes : string) =
    let sel, args = (
      Objc.arg bytes "initWithCStringNoCopy" make_string
      ++ Objc.arg length "length" make_int
      ++ Objc.arg freeBuffer "freeWhenDone" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithCString  ?length:(length : int option) (bytes : string) =
    let sel, args = (
      Objc.arg bytes "initWithCString" make_string
      ++ Objc.opt_arg length "length" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithCString *)
end
