(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPrintInfo *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithDictionary (attributes : [`NSDictionary] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithDictionary:")
      [make_pointer_from_object attributes]) : [`NSObject] Objc.id)
  method dictionary =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dictionary")[])
       : [`NSMutableDictionary] Objc.id))
  method setPaperName (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPaperName:")
      [make_pointer_from_object name]) : unit)
  method setPaperSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPaperSize:")
      [make_size size]) : unit)
  method setOrientation (orientation : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOrientation:")
      [make_int orientation]) : unit)
  method paperName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "paperName")[])
       : [`NSString] Objc.id))
  method paperSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "paperSize")[])
       : NSSize.t)
  method orientation =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "orientation")[])
       : int)
  method setLeftMargin (margin : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLeftMargin:")
      [make_float margin]) : unit)
  method setRightMargin (margin : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRightMargin:")
      [make_float margin]) : unit)
  method setTopMargin (margin : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTopMargin:")
      [make_float margin]) : unit)
  method setBottomMargin (margin : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBottomMargin:")
      [make_float margin]) : unit)
  method leftMargin =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "leftMargin")[])
       : float)
  method rightMargin =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "rightMargin")[])
       : float)
  method topMargin =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "topMargin")[])
       : float)
  method bottomMargin =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "bottomMargin")[])
       : float)
  method setHorizontallyCentered (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHorizontallyCentered:")
      [make_bool flag]) : unit)
  method setVerticallyCentered (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVerticallyCentered:")
      [make_bool flag]) : unit)
  method isHorizontallyCentered =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isHorizontallyCentered")[])
       : bool)
  method isVerticallyCentered =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isVerticallyCentered")[])
       : bool)
  method setHorizontalPagination (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHorizontalPagination:")
      [make_int mode]) : unit)
  method setVerticalPagination (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVerticalPagination:")
      [make_int mode]) : unit)
  method horizontalPagination =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "horizontalPagination")[])
       : int)
  method verticalPagination =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "verticalPagination")[])
       : int)
  method setJobDisposition (disposition : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setJobDisposition:")
      [make_pointer_from_object disposition]) : unit)
  method jobDisposition =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "jobDisposition")[])
       : [`NSString] Objc.id))
  method setPrinter (printer : [`NSPrinter] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPrinter:")
      [make_pointer_from_object printer]) : unit)
  method printer =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "printer")[])
       : [`NSPrinter] Objc.id))
  method setUpPrintOperationDefaultValues =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUpPrintOperationDefaultValues")[])
       : unit)
  method imageablePageBounds =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "imageablePageBounds")[])
       : NSRect.t)
  method localizedPaperName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localizedPaperName")[])
       : [`NSString] Objc.id))
end
