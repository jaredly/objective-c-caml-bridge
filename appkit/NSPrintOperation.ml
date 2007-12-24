(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSPrintOperation"
let _ = init()
let make_NSObject_of_NSPrintOperation (o : [`NSPrintOperation] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSPrintOperation *)
let class_NSPrintOperation = object
   val repr = Classes.find "NSPrintOperation"
   method _new = (Objc.objcnew repr : [`NSPrintOperation] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPrintOperation] nativeNSObject)
(* methods for category NSDeprecated *)
   (* skipping selector printOperationWithView *)
   method printOperationWithView  ?printInfo:(aPrintInfo : [`NSPrintInfo] Objc.t option) (aView : [`NSView] Objc.t) =
     let sel, args = (
       Objc.arg aView "printOperationWithView" make_pointer_from_object
       ++ Objc.opt_arg aPrintInfo "printInfo" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPrintOperation] Objc.nativeNSObject)
   (* skipping selector l_EPSOperationWithView:insideRect:toData *)
(*  UNSUPPORTED
   method l_EPSOperationWithView  ?insideRect:(rect : (*NSRect*) unsupported option) ?toData:(data : [`NSMutableData] Objc.t option) ?printInfo:(aPrintInfo : [`NSPrintInfo] Objc.t option) (aView : [`NSView] Objc.t) =
     let sel, args = (
       Objc.arg aView "l_EPSOperationWithView" make_pointer_from_object
       ++ Objc.opt_arg rect "insideRect" (*NSRect*) unsupported
       ++ Objc.opt_arg data "toData" make_pointer_from_object
       ++ Objc.opt_arg aPrintInfo "printInfo" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPrintOperation] Objc.nativeNSObject)

*)
   (* skipping selector l_EPSOperationWithView:insideRect:toPath:printInfo *)
   (* skipping selector l_PDFOperationWithView:insideRect:toData *)
(*  UNSUPPORTED
   method l_PDFOperationWithView  ?insideRect:(rect : (*NSRect*) unsupported option) ?toData:(data : [`NSMutableData] Objc.t option) ?printInfo:(aPrintInfo : [`NSPrintInfo] Objc.t option) (aView : [`NSView] Objc.t) =
     let sel, args = (
       Objc.arg aView "l_PDFOperationWithView" make_pointer_from_object
       ++ Objc.opt_arg rect "insideRect" (*NSRect*) unsupported
       ++ Objc.opt_arg data "toData" make_pointer_from_object
       ++ Objc.opt_arg aPrintInfo "printInfo" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPrintOperation] Objc.nativeNSObject)

*)
   (* skipping selector l_PDFOperationWithView:insideRect:toPath:printInfo *)
   method currentOperation =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentOperation:")[]) : [`NSPrintOperation] Objc.nativeNSObject)
   method setCurrentOperation (operation : [`NSPrintOperation] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setCurrentOperation:")[make_pointer_from_object operation]) : [`NSPrintOperation] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPrintOperation *)
class native_NSPrintOperation = fun (o : [`NSPrintOperation] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSPrintOperation o) as super
(* methods for category NSDeprecated *)
   method setShowPanels (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShowPanels:")[make_bool flag]) : unit)
   method showPanels =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "showPanels:")[]) : bool)
   method isCopyingOperation =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isCopyingOperation:")[]) : bool)
   method runOperation =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "runOperation:")[]) : bool)
   method runOperationModalForWindow  ~delegate:(delegate : [`NSObject] Objc.t ) ~didRunSelector:(didRunSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (docWindow : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg docWindow "runOperationModalForWindow" make_pointer_from_object
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg didRunSelector "didRunSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method setCanSpawnSeparateThread (canSpawnSeparateThread : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCanSpawnSeparateThread:")[make_bool canSpawnSeparateThread]) : unit)
   method canSpawnSeparateThread =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canSpawnSeparateThread:")[]) : bool)
   method setShowsPrintPanel (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShowsPrintPanel:")[make_bool flag]) : unit)
   method showsPrintPanel =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "showsPrintPanel:")[]) : bool)
   method setShowsProgressPanel (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShowsProgressPanel:")[make_bool flag]) : unit)
   method showsProgressPanel =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "showsProgressPanel:")[]) : bool)
   method setPrintPanel (panel : [`NSPrintPanel] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPrintPanel:")[make_pointer_from_object panel]) : unit)
   method printPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "printPanel:")[]) : [`NSPrintPanel] Objc.nativeNSObject)
   method setAccessoryView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAccessoryView:")[make_pointer_from_object aView]) : unit)
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)
   method setJobStyleHint (hint : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setJobStyleHint:")[make_pointer_from_object hint]) : unit)
   method jobStyleHint =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "jobStyleHint:")[]) : [`NSString] Objc.nativeNSObject)
   method setPrintInfo (aPrintInfo : [`NSPrintInfo] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPrintInfo:")[make_pointer_from_object aPrintInfo]) : unit)
   method printInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "printInfo:")[]) : [`NSPrintInfo] Objc.nativeNSObject)
   method view =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "view:")[]) : [`NSView] Objc.nativeNSObject)
   method currentPage =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "currentPage:")[]) : int)
   method setPageOrder (order : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPageOrder:")[make_int order]) : unit)
   method pageOrder =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "pageOrder:")[]) : int)
   method context =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "context:")[]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method createContext =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "createContext:")[]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method destroyContext =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "destroyContext:")[]) : unit)
   method deliverResult =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "deliverResult:")[]) : bool)
   method cleanUpOperation =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "cleanUpOperation:")[]) : unit)
end
