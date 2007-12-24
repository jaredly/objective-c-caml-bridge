(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSGeometry
open NSObject


external init : unit -> unit = "caml_init_NSPrinter"
let _ = init()
let make_NSObject_of_NSPrinter (o : [`NSPrinter] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSPrinter *)
let class_NSPrinter = object
   val repr = Classes.find "NSPrinter"
   method _new = (Objc.objcnew repr : [`NSPrinter] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPrinter] nativeNSObject)
   method printerNames =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "printerNames:")[]) : [`NSArray] Objc.nativeNSObject)
   method printerTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "printerTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   (* skipping selector printerWithName *)
   method printerWithType (_type : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "printerWithType:")[make_pointer_from_object _type]) : [`NSPrinter] Objc.nativeNSObject)
   method printerWithName  ?domain:(domain : [`NSString] Objc.t option) ?includeUnavailable:(flag : bool option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "printerWithName" make_pointer_from_object
       ++ Objc.opt_arg domain "domain" make_pointer_from_object
       ++ Objc.opt_arg flag "includeUnavailable" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPrinter] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPrinter *)
class native_NSPrinter = fun (o : [`NSPrinter] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSPrinter o) as super
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method l_type =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_type:")[]) : [`NSString] Objc.nativeNSObject)
   method languageLevel =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "languageLevel:")[]) : int)
(*  UNSUPPORTED
   method pageSizeForPaper (paperName : [`NSString] Objc.t) =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "pageSizeForPaper:")[make_pointer_from_object paperName]) : (*NSSize*) unsupported)

*)
   method statusForTable (tableName : [`NSString] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "statusForTable:")[make_pointer_from_object tableName]) : int)
   method isKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "isKey" make_pointer_from_object
       ++ Objc.arg table "inTable" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method booleanForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "booleanForKey" make_pointer_from_object
       ++ Objc.arg table "inTable" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method floatForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "floatForKey" make_pointer_from_object
       ++ Objc.arg table "inTable" make_pointer_from_object
     ) ([],[]) in
       (get_float (Objc.invoke Objc.tag_float repr (Selector.find_list sel) args) : float)
   method intForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "intForKey" make_pointer_from_object
       ++ Objc.arg table "inTable" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
(*  UNSUPPORTED
   method rectForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "rectForKey" make_pointer_from_object
       ++ Objc.arg table "inTable" make_pointer_from_object
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method sizeForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "sizeForKey" make_pointer_from_object
       ++ Objc.arg table "inTable" make_pointer_from_object
     ) ([],[]) in
       ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSSize*) unsupported)

*)
   method stringForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "stringForKey" make_pointer_from_object
       ++ Objc.arg table "inTable" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method stringListForKey  ~inTable:(table : [`NSString] Objc.t ) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "stringListForKey" make_pointer_from_object
       ++ Objc.arg table "inTable" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSArray] Objc.nativeNSObject)
   method deviceDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "deviceDescription:")[]) : [`NSDictionary] Objc.nativeNSObject)
(*  UNSUPPORTED
   method imageRectForPaper (paperName : [`NSString] Objc.t) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "imageRectForPaper:")[make_pointer_from_object paperName]) : (*NSRect*) unsupported)

*)
   method acceptsBinary =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "acceptsBinary:")[]) : bool)
   method isColor =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isColor:")[]) : bool)
   method isFontAvailable (faceName : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isFontAvailable:")[make_pointer_from_object faceName]) : bool)
   method isOutputStackInReverseOrder =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isOutputStackInReverseOrder:")[]) : bool)
   method domain =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "domain:")[]) : [`NSString] Objc.nativeNSObject)
   method host =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "host:")[]) : [`NSString] Objc.nativeNSObject)
   method note =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "note:")[]) : [`NSString] Objc.nativeNSObject)
end
