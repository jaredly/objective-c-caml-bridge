(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSKeyedArchiver *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initForWritingWithMutableData (data : [`NSMutableData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initForWritingWithMutableData:")
      [make_pointer_from_object data]) : [`NSObject] Objc.id)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setOutputFormat (format : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOutputFormat:")
      [make_int format]) : unit)
  method outputFormat =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "outputFormat")[])
       : int)
  method finishEncoding =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "finishEncoding")[])
       : unit)
  method setClassName_forClass  (codedName : [`NSString] Objc.t) (cls : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg codedName "setClassName" make_pointer_from_object
      ++ Objc.arg cls "forClass" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method classNameForClass (cls : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classNameForClass:")
      [make_pointer_from_object cls]) : [`NSString] Objc.id))
  method encodeObject_forKey  (objv : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg objv "encodeObject" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeConditionalObject_forKey  (objv : [`NSObject] Objc.t) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg objv "encodeConditionalObject" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeBool_forKey  (boolv : bool) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg boolv "encodeBool" make_bool
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeInt_forKey  (intv : int) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg intv "encodeInt" make_int
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeInt32_forKey  (intv : int64) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg intv "encodeInt32" make_int64
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeInt64_forKey  (intv : int64) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg intv "encodeInt64" make_int64
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeFloat_forKey  (realv : float) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg realv "encodeFloat" make_float
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method encodeDouble_forKey  (realv : float) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg realv "encodeDouble" make_float
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method encodeBytes_length_forKey  (bytesp : (*pointer to const uint8_t*) unsupported) (lenv : int) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg bytesp "encodeBytes" (*pointer to const uint8_t*) unsupported
      ++ Objc.arg lenv "length" make_int
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
end
