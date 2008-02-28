(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCoder *)
class virtual methods = object (self)
  method virtual repr : [`NSCoder] Objc.id
(*  UNSUPPORTED
  method encodeValueOfObjCType  ~at:(addr : (*pointer to const void*) unsupported ) (_type : string) =
    let sel, args = (
      Objc.arg _type "encodeValueOfObjCType" make_string
      ++ Objc.arg addr "at" (*pointer to const void*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method encodeDataObject (data : [`NSData] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodeDataObject:")
      [make_pointer_from_object data]) : unit)
  method decodeValueOfObjCType  ~at:(data : [`void] Objc.t ) (_type : string) =
    let sel, args = (
      Objc.arg _type "decodeValueOfObjCType" make_string
      ++ Objc.arg data "at" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method decodeDataObject =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decodeDataObject")[])
       : [`NSData] Objc.id))
  method versionForClassName (className : [`NSString] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "versionForClassName:")
      [make_pointer_from_object className]) : int)
end
