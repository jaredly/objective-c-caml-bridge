(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSAppleEventDescriptor *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
(*  UNSUPPORTED
  method initWithAEDescNoCopy (aeDesc : (*pointer to const AEDesc*) unsupported) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithAEDescNoCopy:")
      [(*pointer to const AEDesc*) unsupported aeDesc]) : [`NSObject] Objc.id)

*)
(*  UNSUPPORTED
  method initWithDescriptorType_bytes_length  (descriptorType : (*DescType*) unsupported) (bytes : (*pointer to const void*) unsupported) (byteCount : int) =
    let sel, args = (
      Objc.arg descriptorType "initWithDescriptorType" (*DescType*) unsupported
      ++ Objc.arg bytes "bytes" (*pointer to const void*) unsupported
      ++ Objc.arg byteCount "length" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
(*  UNSUPPORTED
  method initWithDescriptorType_data  (descriptorType : (*DescType*) unsupported) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg descriptorType "initWithDescriptorType" (*DescType*) unsupported
      ++ Objc.arg data "data" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method initWithEventClass_eventID_targetDescriptor_returnID_transactionID  (eventClass : int64) (eventID : int64) (targetDescriptor : [`NSAppleEventDescriptor] Objc.t) (returnID : int64) (transactionID : int64) =
    let sel, args = (
      Objc.arg eventClass "initWithEventClass" make_int64
      ++ Objc.arg eventID "eventID" make_int64
      ++ Objc.arg targetDescriptor "targetDescriptor" make_pointer_from_object
      ++ Objc.arg returnID "returnID" make_int64
      ++ Objc.arg transactionID "transactionID" make_int64
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initListDescriptor =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initListDescriptor")[])
       : [`NSObject] Objc.id)
  method initRecordDescriptor =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initRecordDescriptor")[])
       : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method aeDesc =
    ((*pointer to const AEDesc*) unsupported (Objc.invoke (*pointer to const AEDesc*) Objc.tag_unsupported self#repr (Selector.find "aeDesc")[])
       : (*pointer to const AEDesc*) unsupported)

*)
(*  UNSUPPORTED
  method descriptorType =
    ((*DescType*) unsupported (Objc.invoke (*DescType*) Objc.tag_unsupported self#repr (Selector.find "descriptorType")[])
       : (*DescType*) unsupported)

*)
  method data =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "data")[])
       : [`NSData] Objc.id))
  method booleanValue =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "booleanValue")[])
       : bool)
  method enumCodeValue =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "enumCodeValue")[])
       : int64)
  method int32Value =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "int32Value")[])
       : int64)
  method typeCodeValue =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "typeCodeValue")[])
       : int64)
  method stringValue =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringValue")[])
       : [`NSString] Objc.id))
  method eventClass =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "eventClass")[])
       : int64)
  method eventID =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "eventID")[])
       : int64)
  method returnID =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "returnID")[])
       : int64)
  method transactionID =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "transactionID")[])
       : int64)
  method setParamDescriptor_forKeyword  (descriptor : [`NSAppleEventDescriptor] Objc.t) (keyword : int64) =
    let sel, args = (
      Objc.arg descriptor "setParamDescriptor" make_pointer_from_object
      ++ Objc.arg keyword "forKeyword" make_int64
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method paramDescriptorForKeyword (keyword : int64) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "paramDescriptorForKeyword:")
      [make_int64 keyword]) : [`NSAppleEventDescriptor] Objc.id))
  method removeParamDescriptorWithKeyword (keyword : int64) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeParamDescriptorWithKeyword:")
      [make_int64 keyword]) : unit)
  method setAttributeDescriptor_forKeyword  (descriptor : [`NSAppleEventDescriptor] Objc.t) (keyword : int64) =
    let sel, args = (
      Objc.arg descriptor "setAttributeDescriptor" make_pointer_from_object
      ++ Objc.arg keyword "forKeyword" make_int64
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method attributeDescriptorForKeyword (keyword : int64) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributeDescriptorForKeyword:")
      [make_int64 keyword]) : [`NSAppleEventDescriptor] Objc.id))
  method numberOfItems =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfItems")[])
       : int)
  method insertDescriptor_atIndex  (descriptor : [`NSAppleEventDescriptor] Objc.t) (index : int64) =
    let sel, args = (
      Objc.arg descriptor "insertDescriptor" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int64
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method descriptorAtIndex (index : int64) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "descriptorAtIndex:")
      [make_int64 index]) : [`NSAppleEventDescriptor] Objc.id))
  method removeDescriptorAtIndex (index : int64) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeDescriptorAtIndex:")
      [make_int64 index]) : unit)
  method removeDecriptorAtIndex (index : int64) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeDecriptorAtIndex:")
      [make_int64 index]) : unit)
  method setDescriptor_forKeyword  (descriptor : [`NSAppleEventDescriptor] Objc.t) (keyword : int64) =
    let sel, args = (
      Objc.arg descriptor "setDescriptor" make_pointer_from_object
      ++ Objc.arg keyword "forKeyword" make_int64
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method descriptorForKeyword (keyword : int64) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "descriptorForKeyword:")
      [make_int64 keyword]) : [`NSAppleEventDescriptor] Objc.id))
  method removeDescriptorWithKeyword (keyword : int64) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeDescriptorWithKeyword:")
      [make_int64 keyword]) : unit)
  method keywordForDescriptorAtIndex (index : int64) =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "keywordForDescriptorAtIndex:")
      [make_int64 index]) : int64)
(*  UNSUPPORTED
  method coerceToDescriptorType (descriptorType : (*DescType*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "coerceToDescriptorType:")
      [(*DescType*) unsupported descriptorType]) : [`NSAppleEventDescriptor] Objc.id))

*)
end
