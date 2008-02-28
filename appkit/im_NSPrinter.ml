(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPrinter *)
class virtual methods = object (self)
  method virtual repr : [`NSPrinter] Objc.id
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method l_type =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_type")[])
       : [`NSString] Objc.id))
  method languageLevel =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "languageLevel")[])
       : int)
(*  UNSUPPORTED
  method pageSizeForPaper (paperName : [`NSString] Objc.t) =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "pageSizeForPaper:")
      [make_pointer_from_object paperName]) : (*NSSize*) unsupported)

*)
  method statusForTable (tableName : [`NSString] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "statusForTable:")
      [make_pointer_from_object tableName]) : int)
  method isKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "isKey" make_pointer_from_object
      ++ Objc.arg table "inTable" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method booleanForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "booleanForKey" make_pointer_from_object
      ++ Objc.arg table "inTable" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method floatForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "floatForKey" make_pointer_from_object
      ++ Objc.arg table "inTable" make_pointer_from_object
    ) ([],[]) in
      (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find_list sel) args)
       : float)
  method intForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "intForKey" make_pointer_from_object
      ++ Objc.arg table "inTable" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
(*  UNSUPPORTED
  method rectForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "rectForKey" make_pointer_from_object
      ++ Objc.arg table "inTable" make_pointer_from_object
    ) ([],[]) in
      ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method sizeForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "sizeForKey" make_pointer_from_object
      ++ Objc.arg table "inTable" make_pointer_from_object
    ) ([],[]) in
      ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSSize*) unsupported)

*)
  method stringForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "stringForKey" make_pointer_from_object
      ++ Objc.arg table "inTable" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method stringListForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "stringListForKey" make_pointer_from_object
      ++ Objc.arg table "inTable" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
  method deviceDescription =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "deviceDescription")[])
       : [`NSDictionary] Objc.id))
(*  UNSUPPORTED
  method imageRectForPaper (paperName : [`NSString] Objc.t) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "imageRectForPaper:")
      [make_pointer_from_object paperName]) : (*NSRect*) unsupported)

*)
  method acceptsBinary =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "acceptsBinary")[])
       : bool)
  method isColor =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isColor")[])
       : bool)
  method isFontAvailable (faceName : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFontAvailable:")
      [make_pointer_from_object faceName]) : bool)
  method isOutputStackInReverseOrder =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isOutputStackInReverseOrder")[])
       : bool)
  method domain =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "domain")[])
       : [`NSString] Objc.id))
  method host =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "host")[])
       : [`NSString] Objc.id))
  method note =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "note")[])
       : [`NSString] Objc.id))
end
