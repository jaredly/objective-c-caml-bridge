open Objc
open NSNibDeclarations
open NSPanel


external init : unit -> unit = "caml_init_NSSavePanel"
let _ = init()
(* Class object for NSSavePanel *)
let class_NSSavePanel = object
   val o = Classes.find "NSSavePanel"
   method _new = (Objc.objcnew o : [`NSSavePanel] nativeNSObject)
(* methods for category NSSavePanelRuntime *)
   method savePanel =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "savePanel:")[]) : [`NSSavePanel] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSSavePanel *)
class native_NSSavePanel = fun (o : [`NSSavePanel] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSSavePanelRuntime *)
(*  UNSUPPORTED
   method ok (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported o (Selector.find "ok:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
(*  UNSUPPORTED
   method cancel (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported o (Selector.find "cancel:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

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
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method runModalForDirectory  ~file:(name : [`NSString] Objc.t ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "runModalForDirectory" make_pointer_from_object
       ++ Objc.arg name "file" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int o (Selector.find_list sel) args) : int)
   method runModal =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "runModal:")[]) : int)
   method l_URL =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_URL:")[]) : [`NSURL] Objc.nativeNSObject)
   method filename =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "filename:")[]) : [`NSString] Objc.nativeNSObject)
   method directory =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "directory:")[]) : [`NSString] Objc.nativeNSObject)
   method setDirectory (path : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDirectory:")[make_pointer_from_object path]) : unit)
   method requiredFileType =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "requiredFileType:")[]) : [`NSString] Objc.nativeNSObject)
   method setRequiredFileType (_type : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRequiredFileType:")[make_pointer_from_object _type]) : unit)
   method allowedFileTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allowedFileTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method setAllowedFileTypes (types : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAllowedFileTypes:")[make_pointer_from_object types]) : unit)
   method allowsOtherFileTypes =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "allowsOtherFileTypes:")[]) : bool)
   method setAllowsOtherFileTypes (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAllowsOtherFileTypes:")[make_bool flag]) : unit)
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)
   method setAccessoryView (view : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAccessoryView:")[make_pointer_from_object view]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method isExpanded =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isExpanded:")[]) : bool)
   method canCreateDirectories =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "canCreateDirectories:")[]) : bool)
   method setCanCreateDirectories (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCanCreateDirectories:")[make_bool flag]) : unit)
   method canSelectHiddenExtension =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "canSelectHiddenExtension:")[]) : bool)
   method setCanSelectHiddenExtension (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCanSelectHiddenExtension:")[make_bool flag]) : unit)
   method isExtensionHidden =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isExtensionHidden:")[]) : bool)
   method setExtensionHidden (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setExtensionHidden:")[make_bool flag]) : unit)
   method treatsFilePackagesAsDirectories =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "treatsFilePackagesAsDirectories:")[]) : bool)
   method setTreatsFilePackagesAsDirectories (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTreatsFilePackagesAsDirectories:")[make_bool flag]) : unit)
   method prompt =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "prompt:")[]) : [`NSString] Objc.nativeNSObject)
   method setPrompt (prompt : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPrompt:")[make_pointer_from_object prompt]) : unit)
   method title =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "title:")[]) : [`NSString] Objc.nativeNSObject)
   method setTitle (title : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitle:")[make_pointer_from_object title]) : unit)
   method nameFieldLabel =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "nameFieldLabel:")[]) : [`NSString] Objc.nativeNSObject)
   method setNameFieldLabel (label : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNameFieldLabel:")[make_pointer_from_object label]) : unit)
   method message =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "message:")[]) : [`NSString] Objc.nativeNSObject)
   method setMessage (message : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMessage:")[make_pointer_from_object message]) : unit)
   method validateVisibleColumns =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "validateVisibleColumns:")[]) : unit)
(*  UNSUPPORTED
   method selectText (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported o (Selector.find "selectText:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSSavePanelDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSSavePanelDelegate *)
   (* skipping selector panel:shouldShowFilename *)
   method panel  ?compareFilename:(name1 : [`NSString] Objc.t option) ?l_with:(name2 : [`NSString] Objc.t option) ?caseSensitive:(caseSensitive : bool option) (sender : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg sender "panel" make_pointer_from_object
       ++ Objc.opt_arg name1 "compareFilename" make_pointer_from_object
       ++ Objc.opt_arg name2 "l_with" make_pointer_from_object
       ++ Objc.opt_arg caseSensitive "caseSensitive" make_bool
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int o (Selector.find_list sel) args) : int)
   (* skipping selector panel:isValidFilename *)
   (* skipping selector panel:userEnteredFilename:confirmed *)
   (* skipping selector panel:willExpand *)
   (* skipping selector panel:directoryDidChange *)
   method panelSelectionDidChange (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "panelSelectionDidChange:")[make_pointer_from_object sender]) : unit)
end
