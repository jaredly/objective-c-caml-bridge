(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSAppleEventDescriptor] id) -> object
  inherit Im_NSAppleEventDescriptor.methods
  method repr = r
end

(* Class object for NSAppleEventDescriptor *)
let c = Classes.find "NSAppleEventDescriptor"
let _new()= (Objc.objcnew c : [`NSAppleEventDescriptor] id)
let alloc() = (Objc.objcalloc c : [`NSAppleEventDescriptor] id)
let nullDescriptor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "nullDescriptor")[])
       : [`NSAppleEventDescriptor] Objc.id))
(*  UNSUPPORTED
let descriptorWithDescriptorType  ~bytes:(bytes : (*pointer to const void*) unsupported ) ~length:(byteCount : int ) (descriptorType : (*DescType*) unsupported) =
    let sel, args = (
      Objc.arg descriptorType "descriptorWithDescriptorType" (*DescType*) unsupported
      ++ Objc.arg bytes "bytes" (*pointer to const void*) unsupported
      ++ Objc.arg byteCount "length" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSAppleEventDescriptor] Objc.id))

*)
  (* skipping selector descriptorWithDescriptorType:data *)
let descriptorWithBoolean (boolean : bool) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "descriptorWithBoolean:")
      [make_bool boolean]) : [`NSAppleEventDescriptor] Objc.id))
let descriptorWithEnumCode (enumerator : int64) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "descriptorWithEnumCode:")
      [make_int64 enumerator]) : [`NSAppleEventDescriptor] Objc.id))
let descriptorWithInt32 (signedInt : int64) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "descriptorWithInt32:")
      [make_int64 signedInt]) : [`NSAppleEventDescriptor] Objc.id))
let descriptorWithTypeCode (typeCode : int64) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "descriptorWithTypeCode:")
      [make_int64 typeCode]) : [`NSAppleEventDescriptor] Objc.id))
let descriptorWithString (string : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "descriptorWithString:")
      [make_pointer_from_object string]) : [`NSAppleEventDescriptor] Objc.id))
let appleEventWithEventClass  ~eventID:(eventID : int64 ) ~targetDescriptor:(targetDescriptor : [`NSAppleEventDescriptor] Objc.t ) ~returnID:(returnID : int64 ) ~transactionID:(transactionID : int64 ) (eventClass : int64) =
    let sel, args = (
      Objc.arg eventClass "appleEventWithEventClass" make_int64
      ++ Objc.arg eventID "eventID" make_int64
      ++ Objc.arg targetDescriptor "targetDescriptor" make_pointer_from_object
      ++ Objc.arg returnID "returnID" make_int64
      ++ Objc.arg transactionID "transactionID" make_int64
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSAppleEventDescriptor] Objc.id))
let listDescriptor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "listDescriptor")[])
       : [`NSAppleEventDescriptor] Objc.id))
let recordDescriptor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "recordDescriptor")[])
       : [`NSAppleEventDescriptor] Objc.id))
