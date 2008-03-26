(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPrintOperation.methods
end

class t = fun (r :[`NSPrintOperation] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPrintOperation *)
let c = Classes.find "NSPrintOperation"
let _new()= (Objc.objcnew c : [`NSPrintOperation] id)
let alloc() = (Objc.objcalloc c : [`NSPrintOperation] id)
let printOperationWithView (aView : [`NSView] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "printOperationWithView:")
      [make_pointer_from_object aView]) : [`NSPrintOperation] Objc.id))
let printOperationWithView_printInfo  (aView : [`NSView] Objc.t) (aPrintInfo : [`NSPrintInfo] Objc.t) =
    let sel, args = (
      Objc.arg aView "printOperationWithView" make_pointer_from_object
      ++ Objc.arg aPrintInfo "printInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))
let _EPSOperationWithView_insideRect_toData  (aView : [`NSView] Objc.t) (rect : NSRect.t) (data : [`NSMutableData] Objc.t) =
    let sel, args = (
      Objc.arg aView "EPSOperationWithView" make_pointer_from_object
      ++ Objc.arg rect "insideRect" make_rect
      ++ Objc.arg data "toData" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))
let _EPSOperationWithView_insideRect_toData_printInfo  (aView : [`NSView] Objc.t) (rect : NSRect.t) (data : [`NSMutableData] Objc.t) (aPrintInfo : [`NSPrintInfo] Objc.t) =
    let sel, args = (
      Objc.arg aView "EPSOperationWithView" make_pointer_from_object
      ++ Objc.arg rect "insideRect" make_rect
      ++ Objc.arg data "toData" make_pointer_from_object
      ++ Objc.arg aPrintInfo "printInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))
let _EPSOperationWithView_insideRect_toPath_printInfo  (aView : [`NSView] Objc.t) (rect : NSRect.t) (path : [`NSString] Objc.t) (aPrintInfo : [`NSPrintInfo] Objc.t) =
    let sel, args = (
      Objc.arg aView "EPSOperationWithView" make_pointer_from_object
      ++ Objc.arg rect "insideRect" make_rect
      ++ Objc.arg path "toPath" make_pointer_from_object
      ++ Objc.arg aPrintInfo "printInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))
let _PDFOperationWithView_insideRect_toData  (aView : [`NSView] Objc.t) (rect : NSRect.t) (data : [`NSMutableData] Objc.t) =
    let sel, args = (
      Objc.arg aView "PDFOperationWithView" make_pointer_from_object
      ++ Objc.arg rect "insideRect" make_rect
      ++ Objc.arg data "toData" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))
let _PDFOperationWithView_insideRect_toData_printInfo  (aView : [`NSView] Objc.t) (rect : NSRect.t) (data : [`NSMutableData] Objc.t) (aPrintInfo : [`NSPrintInfo] Objc.t) =
    let sel, args = (
      Objc.arg aView "PDFOperationWithView" make_pointer_from_object
      ++ Objc.arg rect "insideRect" make_rect
      ++ Objc.arg data "toData" make_pointer_from_object
      ++ Objc.arg aPrintInfo "printInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))
let _PDFOperationWithView_insideRect_toPath_printInfo  (aView : [`NSView] Objc.t) (rect : NSRect.t) (path : [`NSString] Objc.t) (aPrintInfo : [`NSPrintInfo] Objc.t) =
    let sel, args = (
      Objc.arg aView "PDFOperationWithView" make_pointer_from_object
      ++ Objc.arg rect "insideRect" make_rect
      ++ Objc.arg path "toPath" make_pointer_from_object
      ++ Objc.arg aPrintInfo "printInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))
let currentOperation () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentOperation")[])
       : [`NSPrintOperation] Objc.id))
let setCurrentOperation (operation : [`NSPrintOperation] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setCurrentOperation:")
      [make_pointer_from_object operation]) : unit)
