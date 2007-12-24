(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSResponder
open NSNibDeclarations


external init : unit -> unit = "caml_init_NSWindowController"
let _ = init()
let make_NSResponder_of_NSWindowController (o : [`NSWindowController] nativeNSObject) = (Obj.magic o : [`NSResponder] nativeNSObject)
(* Class object for NSWindowController *)
let class_NSWindowController = object
   val repr = Classes.find "NSWindowController"
   method _new = (Objc.objcnew repr : [`NSWindowController] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSWindowController] nativeNSObject)
end
(* Encapsulation for native instance of NSWindowController *)
class native_NSWindowController = fun (o : [`NSWindowController] nativeNSObject) -> object (self)
   inherit native_NSResponder (make_NSResponder_of_NSWindowController o) as super
   method initWithWindow (window : [`NSWindow] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithWindow:")[make_pointer_from_object window]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithWindowNibName *)
   method initWithWindowNibName  ?owner:(owner : [`NSObject] Objc.t option) (windowNibName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg windowNibName "initWithWindowNibName" make_pointer_from_object
       ++ Objc.opt_arg owner "owner" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithWindowNibPath  ~owner:(owner : [`NSObject] Objc.t ) (windowNibPath : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg windowNibPath "initWithWindowNibPath" make_pointer_from_object
       ++ Objc.arg owner "owner" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method windowNibName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windowNibName:")[]) : [`NSString] Objc.nativeNSObject)
   method windowNibPath =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windowNibPath:")[]) : [`NSString] Objc.nativeNSObject)
   method owner =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "owner:")[]) : [`NSObject] Objc.nativeNSObject)
   method setWindowFrameAutosaveName (name : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setWindowFrameAutosaveName:")[make_pointer_from_object name]) : unit)
   method windowFrameAutosaveName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windowFrameAutosaveName:")[]) : [`NSString] Objc.nativeNSObject)
   method setShouldCascadeWindows (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShouldCascadeWindows:")[make_bool flag]) : unit)
   method shouldCascadeWindows =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "shouldCascadeWindows:")[]) : bool)
   method document =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "document:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDocument (document : [`NSDocument] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDocument:")[make_pointer_from_object document]) : unit)
   method setDocumentEdited (dirtyFlag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDocumentEdited:")[make_bool dirtyFlag]) : unit)
   method setShouldCloseDocument (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShouldCloseDocument:")[make_bool flag]) : unit)
   method shouldCloseDocument =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "shouldCloseDocument:")[]) : bool)
   method setWindow (window : [`NSWindow] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setWindow:")[make_pointer_from_object window]) : unit)
   method window =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "window:")[]) : [`NSWindow] Objc.nativeNSObject)
   method synchronizeWindowTitleWithDocumentName =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "synchronizeWindowTitleWithDocumentName:")[]) : unit)
   method windowTitleForDocumentDisplayName (displayName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windowTitleForDocumentDisplayName:")[make_pointer_from_object displayName]) : [`NSString] Objc.nativeNSObject)
   method close =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "close:")[]) : unit)
(*  UNSUPPORTED
   method showWindow (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported repr (Selector.find "showWindow:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
   method isWindowLoaded =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isWindowLoaded:")[]) : bool)
   method windowDidLoad =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidLoad:")[]) : unit)
   method windowWillLoad =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowWillLoad:")[]) : unit)
   method loadWindow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "loadWindow:")[]) : unit)
end
