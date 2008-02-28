(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPrintOperation] id) -> object
  inherit Cati_NSDeprecated.methods_NSPrintOperation
  inherit Im_NSPrintOperation.methods
  method repr = r
end

(* Class object for NSPrintOperation *)
let c = Classes.find "NSPrintOperation"
let _new()= (Objc.objcnew c : [`NSPrintOperation] id)
let alloc() = (Objc.objcalloc c : [`NSPrintOperation] id)
(* class methods for category NSDeprecated of NSPrintOperation *)
  (* skipping selector printOperationWithView *)
let printOperationWithView  ?printInfo:(aPrintInfo : [`NSPrintInfo] Objc.t option) (aView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg aView "printOperationWithView" make_pointer_from_object
      ++ Objc.opt_arg aPrintInfo "printInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))
  (* skipping selector l_EPSOperationWithView:insideRect:toData *)
(*  UNSUPPORTED
let l_EPSOperationWithView  ?insideRect:(rect : (*NSRect*) unsupported option) ?toData:(data : [`NSMutableData] Objc.t option) ?printInfo:(aPrintInfo : [`NSPrintInfo] Objc.t option) (aView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg aView "l_EPSOperationWithView" make_pointer_from_object
      ++ Objc.opt_arg rect "insideRect" (*NSRect*) unsupported
      ++ Objc.opt_arg data "toData" make_pointer_from_object
      ++ Objc.opt_arg aPrintInfo "printInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))

*)
  (* skipping selector l_EPSOperationWithView:insideRect:toPath:printInfo *)
  (* skipping selector l_PDFOperationWithView:insideRect:toData *)
(*  UNSUPPORTED
let l_PDFOperationWithView  ?insideRect:(rect : (*NSRect*) unsupported option) ?toData:(data : [`NSMutableData] Objc.t option) ?printInfo:(aPrintInfo : [`NSPrintInfo] Objc.t option) (aView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg aView "l_PDFOperationWithView" make_pointer_from_object
      ++ Objc.opt_arg rect "insideRect" (*NSRect*) unsupported
      ++ Objc.opt_arg data "toData" make_pointer_from_object
      ++ Objc.opt_arg aPrintInfo "printInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))

*)
  (* skipping selector l_PDFOperationWithView:insideRect:toPath:printInfo *)
let currentOperation () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentOperation")[])
       : [`NSPrintOperation] Objc.id))
let setCurrentOperation (operation : [`NSPrintOperation] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setCurrentOperation:")
      [make_pointer_from_object operation]) : unit)
