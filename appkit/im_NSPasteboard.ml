(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPasteboard *)
class virtual methods = object (self)
  method virtual repr : [`NSPasteboard] Objc.id
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method releaseGlobally =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "releaseGlobally")[])
       : unit)
  method declareTypes  ~owner:(newOwner : [`NSObject] Objc.t ) (newTypes : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg newTypes "declareTypes" make_pointer_from_object
      ++ Objc.arg newOwner "owner" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method addTypes  ~owner:(newOwner : [`NSObject] Objc.t ) (newTypes : [`NSArray] Objc.t) =
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
  method setData  ~forType:(dataType : [`NSString] Objc.t ) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg data "setData" make_pointer_from_object
      ++ Objc.arg dataType "forType" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method dataForType (dataType : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataForType:")
      [make_pointer_from_object dataType]) : [`NSData] Objc.id))
  method setPropertyList  ~forType:(dataType : [`NSString] Objc.t ) (plist : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg plist "setPropertyList" make_pointer_from_object
      ++ Objc.arg dataType "forType" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method propertyListForType (dataType : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "propertyListForType:")
      [make_pointer_from_object dataType]) : [`NSObject] Objc.id)
  method setString  ~forType:(dataType : [`NSString] Objc.t ) (string : [`NSString] Objc.t) =
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
