(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSPrinting of NSView *)
class virtual methods_NSView = object (self)
  method virtual repr : [`NSObject] Objc.id
  method writeEPSInsideRect_toPasteboard  (rect : NSRect.t) (pasteboard : [`NSPasteboard] Objc.t) =
    let sel, args = (
      Objc.arg rect "writeEPSInsideRect" make_rect
      ++ Objc.arg pasteboard "toPasteboard" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method dataWithEPSInsideRect (rect : NSRect.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataWithEPSInsideRect:")
      [make_rect rect]) : [`NSData] Objc.id))
  method writePDFInsideRect_toPasteboard  (rect : NSRect.t) (pasteboard : [`NSPasteboard] Objc.t) =
    let sel, args = (
      Objc.arg rect "writePDFInsideRect" make_rect
      ++ Objc.arg pasteboard "toPasteboard" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method dataWithPDFInsideRect (rect : NSRect.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataWithPDFInsideRect:")
      [make_rect rect]) : [`NSData] Objc.id))
  method print (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "print:")
      [make_pointer_from_object sender]) : unit)
(*  UNSUPPORTED
  method knowsPageRange (range : (*NSRangePointer*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "knowsPageRange:")
      [(*NSRangePointer*) unsupported range]) : bool)

*)
  method heightAdjustLimit =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "heightAdjustLimit")[])
       : float)
  method widthAdjustLimit =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "widthAdjustLimit")[])
       : float)
  method adjustPageWidthNew_left_right_limit  (newRight : [`float] Objc.t) (oldLeft : float) (oldRight : float) (rightLimit : float) =
    let sel, args = (
      Objc.arg newRight "adjustPageWidthNew" make_pointer_from_object
      ++ Objc.arg oldLeft "left" make_float
      ++ Objc.arg oldRight "right" make_float
      ++ Objc.arg rightLimit "limit" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method adjustPageHeightNew_top_bottom_limit  (newBottom : [`float] Objc.t) (oldTop : float) (oldBottom : float) (bottomLimit : float) =
    let sel, args = (
      Objc.arg newBottom "adjustPageHeightNew" make_pointer_from_object
      ++ Objc.arg oldTop "top" make_float
      ++ Objc.arg oldBottom "bottom" make_float
      ++ Objc.arg bottomLimit "limit" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method rectForPage (page : int) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "rectForPage:")
      [make_int page]) : NSRect.t)
  method locationOfPrintRect (aRect : NSRect.t) =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "locationOfPrintRect:")
      [make_rect aRect]) : NSPoint.t)
  method drawPageBorderWithSize (borderSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawPageBorderWithSize:")
      [make_size borderSize]) : unit)
  method pageHeader =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pageHeader")[])
       : [`NSAttributedString] Objc.id))
  method pageFooter =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pageFooter")[])
       : [`NSAttributedString] Objc.id))
  method drawSheetBorderWithSize (borderSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawSheetBorderWithSize:")
      [make_size borderSize]) : unit)
  method printJobTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "printJobTitle")[])
       : [`NSString] Objc.id))
  method beginDocument =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "beginDocument")[])
       : unit)
  method endDocument =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "endDocument")[])
       : unit)
  method beginPageInRect_atPlacement  (aRect : NSRect.t) (location : NSPoint.t) =
    let sel, args = (
      Objc.arg aRect "beginPageInRect" make_rect
      ++ Objc.arg location "atPlacement" make_point
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method endPage =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "endPage")[])
       : unit)
end
