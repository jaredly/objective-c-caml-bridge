open Objc
open NSGeometry
open NSObject


external init : unit -> unit = "caml_init_NSPrintInfo"
let _ = init()
(* Class object for NSPrintInfo *)
let class_NSPrintInfo = object
   val o = Classes.find "NSPrintInfo"
   method _new = (Objc.objcnew o : [`NSPrintInfo] nativeNSObject)
   method setSharedPrintInfo (printInfo : [`NSPrintInfo] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setSharedPrintInfo:")[make_pointer_from_object printInfo]) : [`NSPrintInfo] Objc.nativeNSObject)
   method sharedPrintInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedPrintInfo:")[]) : [`NSPrintInfo] Objc.nativeNSObject)
   method defaultPrinter =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultPrinter:")[]) : [`NSPrinter] Objc.nativeNSObject)
   method setDefaultPrinter (printer : [`NSPrinter] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setDefaultPrinter:")[make_pointer_from_object printer]) : [`NSPrintInfo] Objc.nativeNSObject)
   method sizeForPaperName (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sizeForPaperName:")[make_pointer_from_object name]) : [`NSPrintInfo] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPrintInfo *)
class native_NSPrintInfo = fun (o : [`NSPrintInfo] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithDictionary (attributes : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithDictionary:")[make_pointer_from_object attributes]) : [`NSObject] Objc.nativeNSObject)
   method dictionary =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dictionary:")[]) : [`NSMutableDictionary] Objc.nativeNSObject)
   method setPaperName (name : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPaperName:")[make_pointer_from_object name]) : unit)
(*  UNSUPPORTED
   method setPaperSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPaperSize:")[(*NSSize*) unsupported size]) : unit)

*)
   method setOrientation (orientation : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setOrientation:")[make_int orientation]) : unit)
   method paperName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "paperName:")[]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method paperSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "paperSize:")[]) : (*NSSize*) unsupported)

*)
   method orientation =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "orientation:")[]) : int)
   method setLeftMargin (margin : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLeftMargin:")[make_float margin]) : unit)
   method setRightMargin (margin : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRightMargin:")[make_float margin]) : unit)
   method setTopMargin (margin : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTopMargin:")[make_float margin]) : unit)
   method setBottomMargin (margin : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBottomMargin:")[make_float margin]) : unit)
   method leftMargin =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "leftMargin:")[]) : float)
   method rightMargin =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "rightMargin:")[]) : float)
   method topMargin =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "topMargin:")[]) : float)
   method bottomMargin =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "bottomMargin:")[]) : float)
   method setHorizontallyCentered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHorizontallyCentered:")[make_bool flag]) : unit)
   method setVerticallyCentered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setVerticallyCentered:")[make_bool flag]) : unit)
   method isHorizontallyCentered =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isHorizontallyCentered:")[]) : bool)
   method isVerticallyCentered =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isVerticallyCentered:")[]) : bool)
   method setHorizontalPagination (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHorizontalPagination:")[make_int mode]) : unit)
   method setVerticalPagination (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setVerticalPagination:")[make_int mode]) : unit)
   method horizontalPagination =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "horizontalPagination:")[]) : int)
   method verticalPagination =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "verticalPagination:")[]) : int)
   method setJobDisposition (disposition : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setJobDisposition:")[make_pointer_from_object disposition]) : unit)
   method jobDisposition =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "jobDisposition:")[]) : [`NSString] Objc.nativeNSObject)
   method setPrinter (printer : [`NSPrinter] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPrinter:")[make_pointer_from_object printer]) : unit)
   method printer =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "printer:")[]) : [`NSPrinter] Objc.nativeNSObject)
   method setUpPrintOperationDefaultValues =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setUpPrintOperationDefaultValues:")[]) : unit)
(*  UNSUPPORTED
   method imageablePageBounds =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "imageablePageBounds:")[]) : (*NSRect*) unsupported)

*)
   method localizedPaperName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localizedPaperName:")[]) : [`NSString] Objc.nativeNSObject)
end
