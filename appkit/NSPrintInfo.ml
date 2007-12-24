(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSGeometry
open NSObject


external init : unit -> unit = "caml_init_NSPrintInfo"
let _ = init()
let make_NSObject_of_NSPrintInfo (o : [`NSPrintInfo] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSPrintInfo *)
let class_NSPrintInfo = object
   val repr = Classes.find "NSPrintInfo"
   method _new = (Objc.objcnew repr : [`NSPrintInfo] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPrintInfo] nativeNSObject)
   method setSharedPrintInfo (printInfo : [`NSPrintInfo] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setSharedPrintInfo:")[make_pointer_from_object printInfo]) : [`NSPrintInfo] Objc.nativeNSObject)
   method sharedPrintInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedPrintInfo:")[]) : [`NSPrintInfo] Objc.nativeNSObject)
   method defaultPrinter =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultPrinter:")[]) : [`NSPrinter] Objc.nativeNSObject)
   method setDefaultPrinter (printer : [`NSPrinter] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setDefaultPrinter:")[make_pointer_from_object printer]) : [`NSPrintInfo] Objc.nativeNSObject)
   method sizeForPaperName (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sizeForPaperName:")[make_pointer_from_object name]) : [`NSPrintInfo] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPrintInfo *)
class native_NSPrintInfo = fun (o : [`NSPrintInfo] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSPrintInfo o) as super
   method initWithDictionary (attributes : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithDictionary:")[make_pointer_from_object attributes]) : [`NSObject] Objc.nativeNSObject)
   method dictionary =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dictionary:")[]) : [`NSMutableDictionary] Objc.nativeNSObject)
   method setPaperName (name : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPaperName:")[make_pointer_from_object name]) : unit)
(*  UNSUPPORTED
   method setPaperSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPaperSize:")[(*NSSize*) unsupported size]) : unit)

*)
   method setOrientation (orientation : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setOrientation:")[make_int orientation]) : unit)
   method paperName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "paperName:")[]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method paperSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "paperSize:")[]) : (*NSSize*) unsupported)

*)
   method orientation =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "orientation:")[]) : int)
   method setLeftMargin (margin : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLeftMargin:")[make_float margin]) : unit)
   method setRightMargin (margin : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRightMargin:")[make_float margin]) : unit)
   method setTopMargin (margin : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTopMargin:")[make_float margin]) : unit)
   method setBottomMargin (margin : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBottomMargin:")[make_float margin]) : unit)
   method leftMargin =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "leftMargin:")[]) : float)
   method rightMargin =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "rightMargin:")[]) : float)
   method topMargin =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "topMargin:")[]) : float)
   method bottomMargin =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "bottomMargin:")[]) : float)
   method setHorizontallyCentered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHorizontallyCentered:")[make_bool flag]) : unit)
   method setVerticallyCentered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setVerticallyCentered:")[make_bool flag]) : unit)
   method isHorizontallyCentered =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isHorizontallyCentered:")[]) : bool)
   method isVerticallyCentered =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isVerticallyCentered:")[]) : bool)
   method setHorizontalPagination (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHorizontalPagination:")[make_int mode]) : unit)
   method setVerticalPagination (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setVerticalPagination:")[make_int mode]) : unit)
   method horizontalPagination =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "horizontalPagination:")[]) : int)
   method verticalPagination =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "verticalPagination:")[]) : int)
   method setJobDisposition (disposition : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setJobDisposition:")[make_pointer_from_object disposition]) : unit)
   method jobDisposition =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "jobDisposition:")[]) : [`NSString] Objc.nativeNSObject)
   method setPrinter (printer : [`NSPrinter] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPrinter:")[make_pointer_from_object printer]) : unit)
   method printer =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "printer:")[]) : [`NSPrinter] Objc.nativeNSObject)
   method setUpPrintOperationDefaultValues =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setUpPrintOperationDefaultValues:")[]) : unit)
(*  UNSUPPORTED
   method imageablePageBounds =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "imageablePageBounds:")[]) : (*NSRect*) unsupported)

*)
   method localizedPaperName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "localizedPaperName:")[]) : [`NSString] Objc.nativeNSObject)
end
