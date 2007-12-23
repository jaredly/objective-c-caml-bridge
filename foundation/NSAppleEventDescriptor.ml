open Objc
open NSObject


external init : unit -> unit = "caml_init_NSAppleEventDescriptor"
let _ = init()
(* Class object for NSAppleEventDescriptor *)
let class_NSAppleEventDescriptor = object
   val o = Classes.find "NSAppleEventDescriptor"
   method _new = (Objc.objcnew o : [`NSAppleEventDescriptor] nativeNSObject)
   method nullDescriptor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "nullDescriptor:")[]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
(*  UNSUPPORTED
   method descriptorWithDescriptorType  ~bytes:(bytes : (*pointer to const void*) unsupported ) ~length:(byteCount : int ) (descriptorType : (*DescType*) unsupported) =
     let sel, args = (
       Objc.arg descriptorType "descriptorWithDescriptorType" (*DescType*) unsupported
       ++ Objc.arg bytes "bytes" (*pointer to const void*) unsupported
       ++ Objc.arg byteCount "length" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSAppleEventDescriptor] Objc.nativeNSObject)

*)
   (* skipping selector descriptorWithDescriptorType:data *)
   method descriptorWithBoolean (boolean : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptorWithBoolean:")[make_bool boolean]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method descriptorWithEnumCode (enumerator : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptorWithEnumCode:")[make_int enumerator]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method descriptorWithInt32 (signedInt : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptorWithInt32:")[make_int64 signedInt]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method descriptorWithTypeCode (typeCode : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptorWithTypeCode:")[make_int typeCode]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method descriptorWithString (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptorWithString:")[make_pointer_from_object string]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method appleEventWithEventClass  ~eventID:(eventID : int64 ) ~targetDescriptor:(targetDescriptor : [`NSAppleEventDescriptor] Objc.t ) ~returnID:(returnID : int64 ) ~transactionID:(transactionID : int64 ) (eventClass : int64) =
     let sel, args = (
       Objc.arg eventClass "appleEventWithEventClass" make_int64
       ++ Objc.arg eventID "eventID" make_int64
       ++ Objc.arg targetDescriptor "targetDescriptor" make_pointer_from_object
       ++ Objc.arg returnID "returnID" make_int64
       ++ Objc.arg transactionID "transactionID" make_int64
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method listDescriptor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "listDescriptor:")[]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method recordDescriptor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "recordDescriptor:")[]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAppleEventDescriptor *)
class native_NSAppleEventDescriptor = fun (o : [`NSAppleEventDescriptor] nativeNSObject) -> object (self)
   val o = o
   method o = o
(*  UNSUPPORTED
   method initWithAEDescNoCopy (aeDesc : (*pointer to const AEDesc*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithAEDescNoCopy:")[(*pointer to const AEDesc*) unsupported aeDesc]) : [`NSObject] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method initWithDescriptorType  ~bytes:(bytes : (*pointer to const void*) unsupported ) ~length:(byteCount : int ) (descriptorType : (*DescType*) unsupported) =
     let sel, args = (
       Objc.arg descriptorType "initWithDescriptorType" (*DescType*) unsupported
       ++ Objc.arg bytes "bytes" (*pointer to const void*) unsupported
       ++ Objc.arg byteCount "length" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   (* skipping selector initWithDescriptorType:data *)
   method initWithEventClass  ~eventID:(eventID : int64 ) ~targetDescriptor:(targetDescriptor : [`NSAppleEventDescriptor] Objc.t ) ~returnID:(returnID : int64 ) ~transactionID:(transactionID : int64 ) (eventClass : int64) =
     let sel, args = (
       Objc.arg eventClass "initWithEventClass" make_int64
       ++ Objc.arg eventID "eventID" make_int64
       ++ Objc.arg targetDescriptor "targetDescriptor" make_pointer_from_object
       ++ Objc.arg returnID "returnID" make_int64
       ++ Objc.arg transactionID "transactionID" make_int64
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initListDescriptor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initListDescriptor:")[]) : [`NSObject] Objc.nativeNSObject)
   method initRecordDescriptor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initRecordDescriptor:")[]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method aeDesc =
     ((*pointer to const AEDesc*) unsupported (Objc.invoke (*pointer to const AEDesc*) Objc.tag_unsupported o (Selector.find "aeDesc:")[]) : (*pointer to const AEDesc*) unsupported)

*)
(*  UNSUPPORTED
   method descriptorType =
     ((*DescType*) unsupported (Objc.invoke (*DescType*) Objc.tag_unsupported o (Selector.find "descriptorType:")[]) : (*DescType*) unsupported)

*)
   method data =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "data:")[]) : [`NSData] Objc.nativeNSObject)
   method booleanValue =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "booleanValue:")[]) : bool)
   method enumCodeValue =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "enumCodeValue:")[]) : int)
   method int32Value =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "int32Value:")[]) : int64)
   method typeCodeValue =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "typeCodeValue:")[]) : int)
   method stringValue =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringValue:")[]) : [`NSString] Objc.nativeNSObject)
   method eventClass =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "eventClass:")[]) : int64)
   method eventID =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "eventID:")[]) : int64)
   method returnID =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "returnID:")[]) : int64)
   method transactionID =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "transactionID:")[]) : int64)
   method setParamDescriptor  ~forKeyword:(keyword : int64 ) (descriptor : [`NSAppleEventDescriptor] Objc.t) =
     let sel, args = (
       Objc.arg descriptor "setParamDescriptor" make_pointer_from_object
       ++ Objc.arg keyword "forKeyword" make_int64
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method paramDescriptorForKeyword (keyword : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "paramDescriptorForKeyword:")[make_int64 keyword]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method removeParamDescriptorWithKeyword (keyword : int64) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeParamDescriptorWithKeyword:")[make_int64 keyword]) : unit)
   method setAttributeDescriptor  ~forKeyword:(keyword : int64 ) (descriptor : [`NSAppleEventDescriptor] Objc.t) =
     let sel, args = (
       Objc.arg descriptor "setAttributeDescriptor" make_pointer_from_object
       ++ Objc.arg keyword "forKeyword" make_int64
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method attributeDescriptorForKeyword (keyword : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributeDescriptorForKeyword:")[make_int64 keyword]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method numberOfItems =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfItems:")[]) : int)
   method insertDescriptor  ~atIndex:(index : int64 ) (descriptor : [`NSAppleEventDescriptor] Objc.t) =
     let sel, args = (
       Objc.arg descriptor "insertDescriptor" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int64
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method descriptorAtIndex (index : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptorAtIndex:")[make_int64 index]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method removeDescriptorAtIndex (index : int64) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeDescriptorAtIndex:")[make_int64 index]) : unit)
   method removeDecriptorAtIndex (index : int64) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeDecriptorAtIndex:")[make_int64 index]) : unit)
   method setDescriptor  ~forKeyword:(keyword : int64 ) (descriptor : [`NSAppleEventDescriptor] Objc.t) =
     let sel, args = (
       Objc.arg descriptor "setDescriptor" make_pointer_from_object
       ++ Objc.arg keyword "forKeyword" make_int64
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method descriptorForKeyword (keyword : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptorForKeyword:")[make_int64 keyword]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)
   method removeDescriptorWithKeyword (keyword : int64) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeDescriptorWithKeyword:")[make_int64 keyword]) : unit)
   method keywordForDescriptorAtIndex (index : int64) =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "keywordForDescriptorAtIndex:")[make_int64 index]) : int64)
(*  UNSUPPORTED
   method coerceToDescriptorType (descriptorType : (*DescType*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "coerceToDescriptorType:")[(*DescType*) unsupported descriptorType]) : [`NSAppleEventDescriptor] Objc.nativeNSObject)

*)
end
