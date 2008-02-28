(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSPrinting of NSView *)
class virtual methods_NSView = object (self)
  method virtual repr : [`NSView] Objc.id
(*  UNSUPPORTED
  method writeEPSInsideRect  ~toPasteboard:(pasteboard : [`NSPasteboard] Objc.t ) (rect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg rect "writeEPSInsideRect" (*NSRect*) unsupported
      ++ Objc.arg pasteboard "toPasteboard" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method dataWithEPSInsideRect (rect : (*NSRect*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataWithEPSInsideRect:")
      [(*NSRect*) unsupported rect]) : [`NSData] Objc.id))

*)
(*  UNSUPPORTED
  method writePDFInsideRect  ~toPasteboard:(pasteboard : [`NSPasteboard] Objc.t ) (rect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg rect "writePDFInsideRect" (*NSRect*) unsupported
      ++ Objc.arg pasteboard "toPasteboard" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method dataWithPDFInsideRect (rect : (*NSRect*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataWithPDFInsideRect:")
      [(*NSRect*) unsupported rect]) : [`NSData] Objc.id))

*)
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
  method adjustPageWidthNew  ~left:(oldLeft : float ) ~right:(oldRight : float ) ~limit:(rightLimit : float ) (newRight : [`float] Objc.t) =
    let sel, args = (
      Objc.arg newRight "adjustPageWidthNew" make_pointer_from_object
      ++ Objc.arg oldLeft "left" make_float
      ++ Objc.arg oldRight "right" make_float
      ++ Objc.arg rightLimit "limit" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method adjustPageHeightNew  ~top:(oldTop : float ) ~bottom:(oldBottom : float ) ~limit:(bottomLimit : float ) (newBottom : [`float] Objc.t) =
    let sel, args = (
      Objc.arg newBottom "adjustPageHeightNew" make_pointer_from_object
      ++ Objc.arg oldTop "top" make_float
      ++ Objc.arg oldBottom "bottom" make_float
      ++ Objc.arg bottomLimit "limit" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method rectForPage (page : int) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "rectForPage:")
      [make_int page]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method locationOfPrintRect (aRect : (*NSRect*) unsupported) =
    ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported self#repr (Selector.find "locationOfPrintRect:")
      [(*NSRect*) unsupported aRect]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
  method drawPageBorderWithSize (borderSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawPageBorderWithSize:")
      [(*NSSize*) unsupported borderSize]) : unit)

*)
  method pageHeader =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pageHeader")[])
       : [`NSAttributedString] Objc.id))
  method pageFooter =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pageFooter")[])
       : [`NSAttributedString] Objc.id))
(*  UNSUPPORTED
  method drawSheetBorderWithSize (borderSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawSheetBorderWithSize:")
      [(*NSSize*) unsupported borderSize]) : unit)

*)
  method printJobTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "printJobTitle")[])
       : [`NSString] Objc.id))
  method beginDocument =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "beginDocument")[])
       : unit)
  method endDocument =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "endDocument")[])
       : unit)
(*  UNSUPPORTED
  method beginPageInRect  ~atPlacement:(location : (*NSPoint*) unsupported ) (aRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg aRect "beginPageInRect" (*NSRect*) unsupported
      ++ Objc.arg location "atPlacement" (*NSPoint*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method endPage =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "endPage")[])
       : unit)
end
