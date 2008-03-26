(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDocument *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method initWithType_error  (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg typeName "initWithType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfURL_ofType_error  (absoluteURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg absoluteURL "initWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initForURL_withContentsOfURL_ofType_error  (absoluteDocumentURL : [`NSURL] Objc.t) (absoluteDocumentContentsURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (outError : bool) =
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
  method revertToContentsOfURL_ofType_error  (absoluteURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg absoluteURL "revertToContentsOfURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method readFromURL_ofType_error  (absoluteURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg absoluteURL "readFromURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method readFromFileWrapper_ofType_error  (fileWrapper : [`NSFileWrapper] Objc.t) (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg fileWrapper "readFromFileWrapper" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method readFromData_ofType_error  (data : [`NSData] Objc.t) (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg data "readFromData" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToURL_ofType_error  (absoluteURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg absoluteURL "writeToURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method fileWrapperOfType_error  (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg typeName "fileWrapperOfType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSFileWrapper] Objc.id))
  method dataOfType_error  (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg typeName "dataOfType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSData] Objc.id))
  method writeSafelyToURL_ofType_forSaveOperation_error  (absoluteURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (saveOperation : int) (outError : bool) =
    let sel, args = (
      Objc.arg absoluteURL "writeSafelyToURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg saveOperation "forSaveOperation" make_int
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToURL_ofType_forSaveOperation_originalContentsURL_error  (absoluteURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (saveOperation : int) (absoluteOriginalContentsURL : [`NSURL] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg absoluteURL "writeToURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg saveOperation "forSaveOperation" make_int
      ++ Objc.arg absoluteOriginalContentsURL "originalContentsURL" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method fileAttributesToWriteToURL_ofType_forSaveOperation_originalContentsURL_error  (absoluteURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (saveOperation : int) (absoluteOriginalContentsURL : [`NSURL] Objc.t) (outError : bool) =
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
  method saveDocumentWithDelegate_didSaveSelector_contextInfo  (delegate : [`NSObject] Objc.t) (didSaveSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg delegate "saveDocumentWithDelegate" make_pointer_from_object
      ++ Objc.arg didSaveSelector "didSaveSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method runModalSavePanelForSaveOperation_delegate_didSaveSelector_contextInfo  (saveOperation : int) (delegate : [`NSObject] Objc.t) (didSaveSelector : selector) (contextInfo : [`void] Objc.t) =
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
  method saveToURL_ofType_forSaveOperation_delegate_didSaveSelector_contextInfo  (absoluteURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (saveOperation : int) (delegate : [`NSObject] Objc.t) (didSaveSelector : selector) (contextInfo : [`void] Objc.t) =
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
  method saveToURL_ofType_forSaveOperation_error  (absoluteURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (saveOperation : int) (outError : bool) =
    let sel, args = (
      Objc.arg absoluteURL "saveToURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg saveOperation "forSaveOperation" make_int
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method hasUnautosavedChanges =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasUnautosavedChanges")[])
       : bool)
  method autosaveDocumentWithDelegate_didAutosaveSelector_contextInfo  (delegate : [`NSObject] Objc.t) (didAutosaveSelector : selector) (contextInfo : [`void] Objc.t) =
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
  method canCloseDocumentWithDelegate_shouldCloseSelector_contextInfo  (delegate : [`NSObject] Objc.t) (shouldCloseSelector : selector) (contextInfo : [`void] Objc.t) =
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
  method runModalPageLayoutWithPrintInfo_delegate_didRunSelector_contextInfo  (printInfo : [`NSPrintInfo] Objc.t) (delegate : [`NSObject] Objc.t) (didRunSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg printInfo "runModalPageLayoutWithPrintInfo" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didRunSelector "didRunSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
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
  method printDocumentWithSettings_showPrintPanel_delegate_didPrintSelector_contextInfo  (printSettings : [`NSDictionary] Objc.t) (showPrintPanel : bool) (delegate : [`NSObject] Objc.t) (didPrintSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg printSettings "printDocumentWithSettings" make_pointer_from_object
      ++ Objc.arg showPrintPanel "showPrintPanel" make_bool
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didPrintSelector "didPrintSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method printOperationWithSettings_error  (printSettings : [`NSDictionary] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg printSettings "printOperationWithSettings" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSPrintOperation] Objc.id))
  method runModalPrintOperation_delegate_didRunSelector_contextInfo  (printOperation : [`NSPrintOperation] Objc.t) (delegate : [`NSObject] Objc.t) (didRunSelector : selector) (contextInfo : [`void] Objc.t) =
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
  method presentError_modalForWindow_delegate_didPresentSelector_contextInfo  (error : [`NSError] Objc.t) (window : [`NSWindow] Objc.t) (delegate : [`NSObject] Objc.t) (didPresentSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg error "presentError" make_pointer_from_object
      ++ Objc.arg window "modalForWindow" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didPresentSelector "didPresentSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method presentError (error : [`NSError] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "presentError:")
      [make_pointer_from_object error]) : bool)
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
  method shouldCloseWindowController_delegate_shouldCloseSelector_contextInfo  (windowController : [`NSWindowController] Objc.t) (delegate : [`NSObject] Objc.t) (callback : selector) (contextInfo : [`void] Objc.t) =
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
