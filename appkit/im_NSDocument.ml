(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDocument *)
class virtual methods = object (self)
  method virtual repr : [`NSDocument] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method initWithType  ~error:(outError : bool ) (typeName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg typeName "initWithType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfURL  ~ofType:(typeName : [`NSString] Objc.t ) ?error:(outError : bool option) (absoluteURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg absoluteURL "initWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.opt_arg outError "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initForURL  ~withContentsOfURL:(absoluteDocumentContentsURL : [`NSURL] Objc.t ) ~ofType:(typeName : [`NSString] Objc.t ) ~error:(outError : bool ) (absoluteDocumentURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg absoluteDocumentURL "initForURL" make_pointer_from_object
      ++ Objc.arg absoluteDocumentContentsURL "withContentsOfURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method setFileType (typeName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFileType:")
      [make_pointer_from_object typeName]) : unit)
  method fileType =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileType")[])
       : [`NSString] Objc.id))
  method setFileURL (absoluteURL : [`NSURL] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFileURL:")
      [make_pointer_from_object absoluteURL]) : unit)
  method fileURL =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileURL")[])
       : [`NSURL] Objc.id))
  method setFileModificationDate (modificationDate : [`NSDate] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFileModificationDate:")
      [make_pointer_from_object modificationDate]) : unit)
  method fileModificationDate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileModificationDate")[])
       : [`NSDate] Objc.id))
(*  UNSUPPORTED
  method revertDocumentToSaved (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "revertDocumentToSaved:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
  method revertToContentsOfURL  ~ofType:(typeName : [`NSString] Objc.t ) ~error:(outError : bool ) (absoluteURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg absoluteURL "revertToContentsOfURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method readFromURL  ~ofType:(typeName : [`NSString] Objc.t ) ?error:(outError : bool option) (absoluteURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg absoluteURL "readFromURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.opt_arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method readFromFileWrapper  ~ofType:(typeName : [`NSString] Objc.t ) ~error:(outError : bool ) (fileWrapper : [`NSFileWrapper] Objc.t) =
    let sel, args = (
      Objc.arg fileWrapper "readFromFileWrapper" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method readFromData  ~ofType:(typeName : [`NSString] Objc.t ) ~error:(outError : bool ) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg data "readFromData" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  (* skipping selector writeToURL:ofType:error *)
  method fileWrapperOfType  ~error:(outError : bool ) (typeName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg typeName "fileWrapperOfType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSFileWrapper] Objc.id))
  method dataOfType  ~error:(outError : bool ) (typeName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg typeName "dataOfType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSData] Objc.id))
  method writeSafelyToURL  ~ofType:(typeName : [`NSString] Objc.t ) ~forSaveOperation:(saveOperation : int ) ~error:(outError : bool ) (absoluteURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg absoluteURL "writeSafelyToURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg saveOperation "forSaveOperation" make_int
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToURL  ?ofType:(typeName : [`NSString] Objc.t option) ?forSaveOperation:(saveOperation : int option) ?originalContentsURL:(absoluteOriginalContentsURL : [`NSURL] Objc.t option) ?error:(outError : bool option) (absoluteURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg absoluteURL "writeToURL" make_pointer_from_object
      ++ Objc.opt_arg typeName "ofType" make_pointer_from_object
      ++ Objc.opt_arg saveOperation "forSaveOperation" make_int
      ++ Objc.opt_arg absoluteOriginalContentsURL "originalContentsURL" make_pointer_from_object
      ++ Objc.opt_arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method fileAttributesToWriteToURL  ~ofType:(typeName : [`NSString] Objc.t ) ~forSaveOperation:(saveOperation : int ) ~originalContentsURL:(absoluteOriginalContentsURL : [`NSURL] Objc.t ) ~error:(outError : bool ) (absoluteURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg absoluteURL "fileAttributesToWriteToURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg saveOperation "forSaveOperation" make_int
      ++ Objc.arg absoluteOriginalContentsURL "originalContentsURL" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDictionary] Objc.id))
  method keepBackupFile =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "keepBackupFile")[])
       : bool)
(*  UNSUPPORTED
  method saveDocument (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "saveDocument:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
(*  UNSUPPORTED
  method saveDocumentAs (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "saveDocumentAs:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
(*  UNSUPPORTED
  method saveDocumentTo (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "saveDocumentTo:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
  method saveDocumentWithDelegate  ~didSaveSelector:(didSaveSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (delegate : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg delegate "saveDocumentWithDelegate" make_pointer_from_object
      ++ Objc.arg didSaveSelector "didSaveSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method runModalSavePanelForSaveOperation  ~delegate:(delegate : [`NSObject] Objc.t ) ~didSaveSelector:(didSaveSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (saveOperation : int) =
    let sel, args = (
      Objc.arg saveOperation "runModalSavePanelForSaveOperation" make_int
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didSaveSelector "didSaveSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method shouldRunSavePanelWithAccessoryView =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldRunSavePanelWithAccessoryView")[])
       : bool)
  method prepareSavePanel (savePanel : [`NSSavePanel] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "prepareSavePanel:")
      [make_pointer_from_object savePanel]) : bool)
  method fileNameExtensionWasHiddenInLastRunSavePanel =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "fileNameExtensionWasHiddenInLastRunSavePanel")[])
       : bool)
  method fileTypeFromLastRunSavePanel =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileTypeFromLastRunSavePanel")[])
       : [`NSString] Objc.id))
  method saveToURL  ~ofType:(typeName : [`NSString] Objc.t ) ~forSaveOperation:(saveOperation : int ) ~delegate:(delegate : [`NSObject] Objc.t ) ~didSaveSelector:(didSaveSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (absoluteURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg absoluteURL "saveToURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg saveOperation "forSaveOperation" make_int
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didSaveSelector "didSaveSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  (* skipping selector saveToURL:ofType:forSaveOperation:error *)
  method hasUnautosavedChanges =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasUnautosavedChanges")[])
       : bool)
  method autosaveDocumentWithDelegate  ~didAutosaveSelector:(didAutosaveSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (delegate : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg delegate "autosaveDocumentWithDelegate" make_pointer_from_object
      ++ Objc.arg didAutosaveSelector "didAutosaveSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method autosavingFileType =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "autosavingFileType")[])
       : [`NSString] Objc.id))
  method setAutosavedContentsFileURL (absoluteURL : [`NSURL] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutosavedContentsFileURL:")
      [make_pointer_from_object absoluteURL]) : unit)
  method autosavedContentsFileURL =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "autosavedContentsFileURL")[])
       : [`NSURL] Objc.id))
  method canCloseDocumentWithDelegate  ~shouldCloseSelector:(shouldCloseSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (delegate : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg delegate "canCloseDocumentWithDelegate" make_pointer_from_object
      ++ Objc.arg shouldCloseSelector "shouldCloseSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method close =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "close")[])
       : unit)
(*  UNSUPPORTED
  method runPageLayout (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "runPageLayout:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
  method runModalPageLayoutWithPrintInfo  ?delegate:(delegate : [`NSObject] Objc.t option) ?didRunSelector:(didRunSelector : selector option) ?contextInfo:(contextInfo : [`void] Objc.t option) (printInfo : [`NSPrintInfo] Objc.t) =
    let sel, args = (
      Objc.arg printInfo "runModalPageLayoutWithPrintInfo" make_pointer_from_object
      ++ Objc.opt_arg delegate "delegate" make_pointer_from_object
      ++ Objc.opt_arg didRunSelector "didRunSelector" make_selector
      ++ Objc.opt_arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method preparePageLayout (pageLayout : [`NSPageLayout] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "preparePageLayout:")
      [make_pointer_from_object pageLayout]) : bool)
  method shouldChangePrintInfo (newPrintInfo : [`NSPrintInfo] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldChangePrintInfo:")
      [make_pointer_from_object newPrintInfo]) : bool)
  method setPrintInfo (printInfo : [`NSPrintInfo] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPrintInfo:")
      [make_pointer_from_object printInfo]) : unit)
  method printInfo =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "printInfo")[])
       : [`NSPrintInfo] Objc.id))
(*  UNSUPPORTED
  method printDocument (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "printDocument:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
  method printDocumentWithSettings  ~showPrintPanel:(showPrintPanel : bool ) ~delegate:(delegate : [`NSObject] Objc.t ) ~didPrintSelector:(didPrintSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (printSettings : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg printSettings "printDocumentWithSettings" make_pointer_from_object
      ++ Objc.arg showPrintPanel "showPrintPanel" make_bool
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didPrintSelector "didPrintSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method printOperationWithSettings  ~error:(outError : bool ) (printSettings : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg printSettings "printOperationWithSettings" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))
  method runModalPrintOperation  ~delegate:(delegate : [`NSObject] Objc.t ) ~didRunSelector:(didRunSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (printOperation : [`NSPrintOperation] Objc.t) =
    let sel, args = (
      Objc.arg printOperation "runModalPrintOperation" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didRunSelector "didRunSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method isDocumentEdited =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isDocumentEdited")[])
       : bool)
  method updateChangeCount (change : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateChangeCount:")
      [make_int change]) : unit)
  method undoManager =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "undoManager")[])
       : [`NSUndoManager] Objc.id))
  method setUndoManager (undoManager : [`NSUndoManager] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUndoManager:")
      [make_pointer_from_object undoManager]) : unit)
  method hasUndoManager =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasUndoManager")[])
       : bool)
  method setHasUndoManager (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHasUndoManager:")
      [make_bool flag]) : unit)
  method presentError  ?modalForWindow:(window : [`NSWindow] Objc.t option) ?delegate:(delegate : [`NSObject] Objc.t option) ?didPresentSelector:(didPresentSelector : selector option) ?contextInfo:(contextInfo : [`void] Objc.t option) (error : [`NSError] Objc.t) =
    let sel, args = (
      Objc.arg error "presentError" make_pointer_from_object
      ++ Objc.opt_arg window "modalForWindow" make_pointer_from_object
      ++ Objc.opt_arg delegate "delegate" make_pointer_from_object
      ++ Objc.opt_arg didPresentSelector "didPresentSelector" make_selector
      ++ Objc.opt_arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  (* skipping selector presentError *)
  method willPresentError (error : [`NSError] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "willPresentError:")
      [make_pointer_from_object error]) : [`NSError] Objc.id))
  method windowControllers =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowControllers")[])
       : [`NSArray] Objc.id))
  method addWindowController (windowController : [`NSWindowController] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addWindowController:")
      [make_pointer_from_object windowController]) : unit)
  method removeWindowController (windowController : [`NSWindowController] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeWindowController:")
      [make_pointer_from_object windowController]) : unit)
  method windowNibName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowNibName")[])
       : [`NSString] Objc.id))
  method makeWindowControllers =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "makeWindowControllers")[])
       : unit)
  method showWindows =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "showWindows")[])
       : unit)
  method shouldCloseWindowController  ~delegate:(delegate : [`NSObject] Objc.t ) ~shouldCloseSelector:(callback : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (windowController : [`NSWindowController] Objc.t) =
    let sel, args = (
      Objc.arg windowController "shouldCloseWindowController" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg callback "shouldCloseSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setWindow (window : [`NSWindow] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWindow:")
      [make_pointer_from_object window]) : unit)
  method windowControllerWillLoadNib (windowController : [`NSWindowController] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "windowControllerWillLoadNib:")
      [make_pointer_from_object windowController]) : unit)
  method windowControllerDidLoadNib (windowController : [`NSWindowController] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "windowControllerDidLoadNib:")
      [make_pointer_from_object windowController]) : unit)
  method displayName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "displayName")[])
       : [`NSString] Objc.id))
  method windowForSheet =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowForSheet")[])
       : [`NSWindow] Objc.id))
  method writableTypesForSaveOperation (saveOperation : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "writableTypesForSaveOperation:")
      [make_int saveOperation]) : [`NSArray] Objc.id))
  method validateUserInterfaceItem (anItem : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "validateUserInterfaceItem:")
      [make_pointer_from_object anItem]) : bool)
end
