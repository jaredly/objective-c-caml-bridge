(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSAppleEventDescriptor.methods
end

class t = fun (r :[`NSAppleEventDescriptor] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSAppleEventDescriptor *)
let c = Classes.find "NSAppleEventDescriptor"
let _new()= (Objc.objcnew c : [`NSAppleEventDescriptor] id)
let alloc() = (Objc.objcalloc c : [`NSAppleEventDescriptor] id)
let nullDescriptor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "nullDescriptor")[])
       : [`NSAppleEventDescriptor] Objc.id))
(*  UNSUPPORTED
let descriptorWithDescriptorType_bytes_length  (descriptorType : (*DescType*) unsupported) (bytes : (*pointer to const void*) unsupported) (byteCount : int) =
    let sel, args = (
      Objc.arg descriptorType "descriptorWithDescriptorType" (*DescType*) unsupported
      ++ Objc.arg bytes "bytes" (*pointer to const void*) unsupported
      ++ Objc.arg byteCount "length" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSAppleEventDescriptor] Objc.id))

*)
(*  UNSUPPORTED
let descriptorWithDescriptorType_data  (descriptorType : (*DescType*) unsupported) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg descriptorType "descriptorWithDescriptorType" (*DescType*) unsupported
      ++ Objc.arg data "data" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSAppleEventDescriptor] Objc.id))

*)
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
let appleEventWithEventClass_eventID_targetDescriptor_returnID_transactionID  (eventClass : int64) (eventID : int64) (targetDescriptor : [`NSAppleEventDescriptor] Objc.t) (returnID : int64) (transactionID : int64) =
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
