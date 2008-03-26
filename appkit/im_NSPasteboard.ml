(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPasteboard *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method releaseGlobally =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "releaseGlobally")[])
       : unit)
  method declareTypes_owner  (newTypes : [`NSArray] Objc.t) (newOwner : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg newTypes "declareTypes" make_pointer_from_object
      ++ Objc.arg newOwner "owner" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method addTypes_owner  (newTypes : [`NSArray] Objc.t) (newOwner : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg newTypes "addTypes" make_pointer_from_object
      ++ Objc.arg newOwner "owner" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method changeCount =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "changeCount")[])
       : int)
  method types =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "types")[])
       : [`NSArray] Objc.id))
  method availableTypeFromArray (types : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "availableTypeFromArray:")
      [make_pointer_from_object types]) : [`NSString] Objc.id))
  method setData_forType  (data : [`NSData] Objc.t) (dataType : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg data "setData" make_pointer_from_object
      ++ Objc.arg dataType "forType" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method dataForType (dataType : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataForType:")
      [make_pointer_from_object dataType]) : [`NSData] Objc.id))
  method setPropertyList_forType  (plist : [`NSObject] Objc.t) (dataType : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg plist "setPropertyList" make_pointer_from_object
      ++ Objc.arg dataType "forType" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method propertyListForType (dataType : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "propertyListForType:")
      [make_pointer_from_object dataType]) : [`NSObject] Objc.id)
  method setString_forType  (string : [`NSString] Objc.t) (dataType : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg string "setString" make_pointer_from_object
      ++ Objc.arg dataType "forType" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method stringForType (dataType : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringForType:")
      [make_pointer_from_object dataType]) : [`NSString] Objc.id))
end
