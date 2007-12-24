(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSNibDeclarations
open NSPanel


external init : unit -> unit = "caml_init_NSSavePanel"
let _ = init()
(* ENUMS *)
(* let_NSFileHandlingPanelCancelButton = ?? *)
(* let_NSFileHandlingPanelOKButton = ?? *)


let make_NSPanel_of_NSSavePanel (o : [`NSSavePanel] nativeNSObject) = (Obj.magic o : [`NSPanel] nativeNSObject)
(* Class object for NSSavePanel *)
let class_NSSavePanel = object
   val repr = Classes.find "NSSavePanel"
   method _new = (Objc.objcnew repr : [`NSSavePanel] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSavePanel] nativeNSObject)
(* methods for category NSSavePanelRuntime *)
   method savePanel =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "savePanel:")[]) : [`NSSavePanel] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSSavePanel *)
class native_NSSavePanel = fun (o : [`NSSavePanel] nativeNSObject) -> object (self)
   inherit native_NSPanel (make_NSPanel_of_NSSavePanel o) as super
(* methods for category NSSavePanelRuntime *)
(*  UNSUPPORTED
   method ok (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported repr (Selector.find "ok:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
(*  UNSUPPORTED
   method cancel (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported repr (Selector.find "cancel:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
   method beginSheetForDirectory  ~file:(name : [`NSString] Objc.t ) ~modalForWindow:(docWindow : [`NSWindow] Objc.t ) ~modalDelegate:(delegate : [`NSObject] Objc.t ) ~didEndSelector:(didEndSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "beginSheetForDirectory" make_pointer_from_object
       ++ Objc.arg name "file" make_pointer_from_object
       ++ Objc.arg docWindow "modalForWindow" make_pointer_from_object
       ++ Objc.arg delegate "modalDelegate" make_pointer_from_object
       ++ Objc.arg didEndSelector "didEndSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method runModalForDirectory  ~file:(name : [`NSString] Objc.t ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "runModalForDirectory" make_pointer_from_object
       ++ Objc.arg name "file" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
   method runModal =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "runModal:")[]) : int)
   method l_URL =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_URL:")[]) : [`NSURL] Objc.nativeNSObject)
   method filename =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "filename:")[]) : [`NSString] Objc.nativeNSObject)
   method directory =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "directory:")[]) : [`NSString] Objc.nativeNSObject)
   method setDirectory (path : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDirectory:")[make_pointer_from_object path]) : unit)
   method requiredFileType =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "requiredFileType:")[]) : [`NSString] Objc.nativeNSObject)
   method setRequiredFileType (_type : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRequiredFileType:")[make_pointer_from_object _type]) : unit)
   method allowedFileTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "allowedFileTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method setAllowedFileTypes (types : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowedFileTypes:")[make_pointer_from_object types]) : unit)
   method allowsOtherFileTypes =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsOtherFileTypes:")[]) : bool)
   method setAllowsOtherFileTypes (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsOtherFileTypes:")[make_bool flag]) : unit)
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)
   method setAccessoryView (view : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAccessoryView:")[make_pointer_from_object view]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method isExpanded =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isExpanded:")[]) : bool)
   method canCreateDirectories =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canCreateDirectories:")[]) : bool)
   method setCanCreateDirectories (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCanCreateDirectories:")[make_bool flag]) : unit)
   method canSelectHiddenExtension =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canSelectHiddenExtension:")[]) : bool)
   method setCanSelectHiddenExtension (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCanSelectHiddenExtension:")[make_bool flag]) : unit)
   method isExtensionHidden =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isExtensionHidden:")[]) : bool)
   method setExtensionHidden (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setExtensionHidden:")[make_bool flag]) : unit)
   method treatsFilePackagesAsDirectories =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "treatsFilePackagesAsDirectories:")[]) : bool)
   method setTreatsFilePackagesAsDirectories (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTreatsFilePackagesAsDirectories:")[make_bool flag]) : unit)
   method prompt =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "prompt:")[]) : [`NSString] Objc.nativeNSObject)
   method setPrompt (prompt : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPrompt:")[make_pointer_from_object prompt]) : unit)
   method title =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "title:")[]) : [`NSString] Objc.nativeNSObject)
   method setTitle (title : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitle:")[make_pointer_from_object title]) : unit)
   method nameFieldLabel =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "nameFieldLabel:")[]) : [`NSString] Objc.nativeNSObject)
   method setNameFieldLabel (label : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setNameFieldLabel:")[make_pointer_from_object label]) : unit)
   method message =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "message:")[]) : [`NSString] Objc.nativeNSObject)
   method setMessage (message : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMessage:")[make_pointer_from_object message]) : unit)
   method validateVisibleColumns =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "validateVisibleColumns:")[]) : unit)
(*  UNSUPPORTED
   method selectText (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported repr (Selector.find "selectText:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSSavePanelDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSSavePanelDelegate *)
   (* skipping selector panel:shouldShowFilename *)
   method panel  ?compareFilename:(name1 : [`NSString] Objc.t option) ?l_with:(name2 : [`NSString] Objc.t option) ?caseSensitive:(caseSensitive : bool option) (sender : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg sender "panel" make_pointer_from_object
       ++ Objc.opt_arg name1 "compareFilename" make_pointer_from_object
       ++ Objc.opt_arg name2 "l_with" make_pointer_from_object
       ++ Objc.opt_arg caseSensitive "caseSensitive" make_bool
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
   (* skipping selector panel:isValidFilename *)
   (* skipping selector panel:userEnteredFilename:confirmed *)
   (* skipping selector panel:willExpand *)
   (* skipping selector panel:directoryDidChange *)
   method panelSelectionDidChange (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "panelSelectionDidChange:")[make_pointer_from_object sender]) : unit)
end
