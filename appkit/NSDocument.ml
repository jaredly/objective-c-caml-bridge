open Objc
open NSObject
open NSNibDeclarations
open NSUserInterfaceValidation


external init : unit -> unit = "caml_init_NSDocument"
let _ = init()
(* Class object for NSDocument *)
let class_NSDocument = object
   val o = Classes.find "NSDocument"
   method _new = (Objc.objcnew o : [`NSDocument] nativeNSObject)
(* methods for category NSDeprecated *)
   method readableTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "readableTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method writableTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "writableTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method isNativeType (_type : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "isNativeType:")[make_pointer_from_object _type]) : [`NSDocument] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSDocument *)
class native_NSDocument = fun (o : [`NSDocument] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSDeprecated *)
   method dataRepresentationOfType (_type : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dataRepresentationOfType:")[make_pointer_from_object _type]) : [`NSData] Objc.nativeNSObject)
   method fileAttributesToWriteToFile  ~ofType:(documentTypeName : [`NSString] Objc.t ) ~saveOperation:(saveOperationType : int ) (fullDocumentPath : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fullDocumentPath "fileAttributesToWriteToFile" make_pointer_from_object
       ++ Objc.arg documentTypeName "ofType" make_pointer_from_object
       ++ Objc.arg saveOperationType "saveOperation" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSDictionary] Objc.nativeNSObject)
   method fileName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileName:")[]) : [`NSString] Objc.nativeNSObject)
   method fileWrapperRepresentationOfType (_type : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileWrapperRepresentationOfType:")[make_pointer_from_object _type]) : [`NSFileWrapper] Objc.nativeNSObject)
   method initWithContentsOfFile  ~ofType:(typeName : [`NSString] Objc.t ) (absolutePath : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg absolutePath "initWithContentsOfFile" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithContentsOfURL:ofType *)
   method loadDataRepresentation  ~ofType:(_type : [`NSString] Objc.t ) (data : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg data "loadDataRepresentation" make_pointer_from_object
       ++ Objc.arg _type "ofType" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method loadFileWrapperRepresentation  ~ofType:(_type : [`NSString] Objc.t ) (wrapper : [`NSFileWrapper] Objc.t) =
     let sel, args = (
       Objc.arg wrapper "loadFileWrapperRepresentation" make_pointer_from_object
       ++ Objc.arg _type "ofType" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method printShowingPrintPanel (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "printShowingPrintPanel:")[make_bool flag]) : unit)
   method readFromFile  ~ofType:(_type : [`NSString] Objc.t ) (fileName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fileName "readFromFile" make_pointer_from_object
       ++ Objc.arg _type "ofType" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   (* skipping selector readFromURL:ofType *)
   method revertToSavedFromFile  ~ofType:(_type : [`NSString] Objc.t ) (fileName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fileName "revertToSavedFromFile" make_pointer_from_object
       ++ Objc.arg _type "ofType" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method revertToSavedFromURL  ~ofType:(_type : [`NSString] Objc.t ) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "revertToSavedFromURL" make_pointer_from_object
       ++ Objc.arg _type "ofType" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   (* skipping selector runModalPageLayoutWithPrintInfo *)
   method saveToFile  ~saveOperation:(saveOperation : int ) ~delegate:(delegate : [`NSObject] Objc.t ) ~didSaveSelector:(didSaveSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (fileName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fileName "saveToFile" make_pointer_from_object
       ++ Objc.arg saveOperation "saveOperation" make_int
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg didSaveSelector "didSaveSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method setFileName (fileName : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFileName:")[make_pointer_from_object fileName]) : unit)
   (* skipping selector writeToFile:ofType *)
   method writeToFile  ~ofType:(documentTypeName : [`NSString] Objc.t ) ?originalFile:(fullOriginalDocumentPath : [`NSString] Objc.t option) ?saveOperation:(saveOperationType : int option) (fullDocumentPath : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fullDocumentPath "writeToFile" make_pointer_from_object
       ++ Objc.arg documentTypeName "ofType" make_pointer_from_object
       ++ Objc.opt_arg fullOriginalDocumentPath "originalFile" make_pointer_from_object
       ++ Objc.opt_arg saveOperationType "saveOperation" make_int
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   (* skipping selector writeToURL:ofType *)
   method writeWithBackupToFile  ~ofType:(documentTypeName : [`NSString] Objc.t ) ~saveOperation:(saveOperationType : int ) (fullDocumentPath : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fullDocumentPath "writeWithBackupToFile" make_pointer_from_object
       ++ Objc.arg documentTypeName "ofType" make_pointer_from_object
       ++ Objc.arg saveOperationType "saveOperation" make_int
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method initWithType  ~error:(outError : bool ) (typeName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg typeName "initWithType" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfURL  ~ofType:(typeName : [`NSString] Objc.t ) ?error:(outError : bool option) (absoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteURL "initWithContentsOfURL" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.opt_arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initForURL  ~withContentsOfURL:(absoluteDocumentContentsURL : [`NSURL] Objc.t ) ~ofType:(typeName : [`NSString] Objc.t ) ~error:(outError : bool ) (absoluteDocumentURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteDocumentURL "initForURL" make_pointer_from_object
       ++ Objc.arg absoluteDocumentContentsURL "withContentsOfURL" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method setFileType (typeName : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFileType:")[make_pointer_from_object typeName]) : unit)
   method fileType =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileType:")[]) : [`NSString] Objc.nativeNSObject)
   method setFileURL (absoluteURL : [`NSURL] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFileURL:")[make_pointer_from_object absoluteURL]) : unit)
   method fileURL =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileURL:")[]) : [`NSURL] Objc.nativeNSObject)
   method setFileModificationDate (modificationDate : [`NSDate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFileModificationDate:")[make_pointer_from_object modificationDate]) : unit)
   method fileModificationDate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileModificationDate:")[]) : [`NSDate] Objc.nativeNSObject)
(*  UNSUPPORTED
   method revertDocumentToSaved (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported o (Selector.find "revertDocumentToSaved:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
   method revertToContentsOfURL  ~ofType:(typeName : [`NSString] Objc.t ) ~error:(outError : bool ) (absoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteURL "revertToContentsOfURL" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method readFromURL  ~ofType:(typeName : [`NSString] Objc.t ) ?error:(outError : bool option) (absoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteURL "readFromURL" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.opt_arg outError "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method readFromFileWrapper  ~ofType:(typeName : [`NSString] Objc.t ) ~error:(outError : bool ) (fileWrapper : [`NSFileWrapper] Objc.t) =
     let sel, args = (
       Objc.arg fileWrapper "readFromFileWrapper" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method readFromData  ~ofType:(typeName : [`NSString] Objc.t ) ~error:(outError : bool ) (data : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg data "readFromData" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   (* skipping selector writeToURL:ofType:error *)
   method fileWrapperOfType  ~error:(outError : bool ) (typeName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg typeName "fileWrapperOfType" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSFileWrapper] Objc.nativeNSObject)
   method dataOfType  ~error:(outError : bool ) (typeName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg typeName "dataOfType" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)
   method writeSafelyToURL  ~ofType:(typeName : [`NSString] Objc.t ) ~forSaveOperation:(saveOperation : int ) ~error:(outError : bool ) (absoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteURL "writeSafelyToURL" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.arg saveOperation "forSaveOperation" make_int
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method writeToURL  ?ofType:(typeName : [`NSString] Objc.t option) ?forSaveOperation:(saveOperation : int option) ?originalContentsURL:(absoluteOriginalContentsURL : [`NSURL] Objc.t option) ?error:(outError : bool option) (absoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteURL "writeToURL" make_pointer_from_object
       ++ Objc.opt_arg typeName "ofType" make_pointer_from_object
       ++ Objc.opt_arg saveOperation "forSaveOperation" make_int
       ++ Objc.opt_arg absoluteOriginalContentsURL "originalContentsURL" make_pointer_from_object
       ++ Objc.opt_arg outError "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method fileAttributesToWriteToURL  ~ofType:(typeName : [`NSString] Objc.t ) ~forSaveOperation:(saveOperation : int ) ~originalContentsURL:(absoluteOriginalContentsURL : [`NSURL] Objc.t ) ~error:(outError : bool ) (absoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteURL "fileAttributesToWriteToURL" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.arg saveOperation "forSaveOperation" make_int
       ++ Objc.arg absoluteOriginalContentsURL "originalContentsURL" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSDictionary] Objc.nativeNSObject)
   method keepBackupFile =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "keepBackupFile:")[]) : bool)
(*  UNSUPPORTED
   method saveDocument (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported o (Selector.find "saveDocument:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
(*  UNSUPPORTED
   method saveDocumentAs (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported o (Selector.find "saveDocumentAs:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
(*  UNSUPPORTED
   method saveDocumentTo (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported o (Selector.find "saveDocumentTo:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
   method saveDocumentWithDelegate  ~didSaveSelector:(didSaveSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (delegate : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg delegate "saveDocumentWithDelegate" make_pointer_from_object
       ++ Objc.arg didSaveSelector "didSaveSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method runModalSavePanelForSaveOperation  ~delegate:(delegate : [`NSObject] Objc.t ) ~didSaveSelector:(didSaveSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (saveOperation : int) =
     let sel, args = (
       Objc.arg saveOperation "runModalSavePanelForSaveOperation" make_int
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg didSaveSelector "didSaveSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method shouldRunSavePanelWithAccessoryView =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "shouldRunSavePanelWithAccessoryView:")[]) : bool)
   method prepareSavePanel (savePanel : [`NSSavePanel] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "prepareSavePanel:")[make_pointer_from_object savePanel]) : bool)
   method fileNameExtensionWasHiddenInLastRunSavePanel =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "fileNameExtensionWasHiddenInLastRunSavePanel:")[]) : bool)
   method fileTypeFromLastRunSavePanel =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileTypeFromLastRunSavePanel:")[]) : [`NSString] Objc.nativeNSObject)
   method saveToURL  ~ofType:(typeName : [`NSString] Objc.t ) ~forSaveOperation:(saveOperation : int ) ~delegate:(delegate : [`NSObject] Objc.t ) ~didSaveSelector:(didSaveSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (absoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteURL "saveToURL" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.arg saveOperation "forSaveOperation" make_int
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg didSaveSelector "didSaveSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   (* skipping selector saveToURL:ofType:forSaveOperation:error *)
   method hasUnautosavedChanges =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "hasUnautosavedChanges:")[]) : bool)
   method autosaveDocumentWithDelegate  ~didAutosaveSelector:(didAutosaveSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (delegate : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg delegate "autosaveDocumentWithDelegate" make_pointer_from_object
       ++ Objc.arg didAutosaveSelector "didAutosaveSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method autosavingFileType =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "autosavingFileType:")[]) : [`NSString] Objc.nativeNSObject)
   method setAutosavedContentsFileURL (absoluteURL : [`NSURL] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAutosavedContentsFileURL:")[make_pointer_from_object absoluteURL]) : unit)
   method autosavedContentsFileURL =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "autosavedContentsFileURL:")[]) : [`NSURL] Objc.nativeNSObject)
   method canCloseDocumentWithDelegate  ~shouldCloseSelector:(shouldCloseSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (delegate : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg delegate "canCloseDocumentWithDelegate" make_pointer_from_object
       ++ Objc.arg shouldCloseSelector "shouldCloseSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method close =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "close:")[]) : unit)
(*  UNSUPPORTED
   method runPageLayout (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported o (Selector.find "runPageLayout:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
   method runModalPageLayoutWithPrintInfo  ?delegate:(delegate : [`NSObject] Objc.t option) ?didRunSelector:(didRunSelector : selector option) ?contextInfo:(contextInfo : [`void] Objc.t option) (printInfo : [`NSPrintInfo] Objc.t) =
     let sel, args = (
       Objc.arg printInfo "runModalPageLayoutWithPrintInfo" make_pointer_from_object
       ++ Objc.opt_arg delegate "delegate" make_pointer_from_object
       ++ Objc.opt_arg didRunSelector "didRunSelector" make_selector
       ++ Objc.opt_arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method preparePageLayout (pageLayout : [`NSPageLayout] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "preparePageLayout:")[make_pointer_from_object pageLayout]) : bool)
   method shouldChangePrintInfo (newPrintInfo : [`NSPrintInfo] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "shouldChangePrintInfo:")[make_pointer_from_object newPrintInfo]) : bool)
   method setPrintInfo (printInfo : [`NSPrintInfo] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPrintInfo:")[make_pointer_from_object printInfo]) : unit)
   method printInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "printInfo:")[]) : [`NSPrintInfo] Objc.nativeNSObject)
(*  UNSUPPORTED
   method printDocument (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported o (Selector.find "printDocument:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
   method printDocumentWithSettings  ~showPrintPanel:(showPrintPanel : bool ) ~delegate:(delegate : [`NSObject] Objc.t ) ~didPrintSelector:(didPrintSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (printSettings : [`NSDictionary] Objc.t) =
     let sel, args = (
       Objc.arg printSettings "printDocumentWithSettings" make_pointer_from_object
       ++ Objc.arg showPrintPanel "showPrintPanel" make_bool
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg didPrintSelector "didPrintSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method printOperationWithSettings  ~error:(outError : bool ) (printSettings : [`NSDictionary] Objc.t) =
     let sel, args = (
       Objc.arg printSettings "printOperationWithSettings" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSPrintOperation] Objc.nativeNSObject)
   method runModalPrintOperation  ~delegate:(delegate : [`NSObject] Objc.t ) ~didRunSelector:(didRunSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (printOperation : [`NSPrintOperation] Objc.t) =
     let sel, args = (
       Objc.arg printOperation "runModalPrintOperation" make_pointer_from_object
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg didRunSelector "didRunSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method isDocumentEdited =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isDocumentEdited:")[]) : bool)
   method updateChangeCount (change : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "updateChangeCount:")[make_int change]) : unit)
   method undoManager =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "undoManager:")[]) : [`NSUndoManager] Objc.nativeNSObject)
   method setUndoManager (undoManager : [`NSUndoManager] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setUndoManager:")[make_pointer_from_object undoManager]) : unit)
   method hasUndoManager =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "hasUndoManager:")[]) : bool)
   method setHasUndoManager (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHasUndoManager:")[make_bool flag]) : unit)
   method presentError  ?modalForWindow:(window : [`NSWindow] Objc.t option) ?delegate:(delegate : [`NSObject] Objc.t option) ?didPresentSelector:(didPresentSelector : selector option) ?contextInfo:(contextInfo : [`void] Objc.t option) (error : [`NSError] Objc.t) =
     let sel, args = (
       Objc.arg error "presentError" make_pointer_from_object
       ++ Objc.opt_arg window "modalForWindow" make_pointer_from_object
       ++ Objc.opt_arg delegate "delegate" make_pointer_from_object
       ++ Objc.opt_arg didPresentSelector "didPresentSelector" make_selector
       ++ Objc.opt_arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   (* skipping selector presentError *)
   method willPresentError (error : [`NSError] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "willPresentError:")[make_pointer_from_object error]) : [`NSError] Objc.nativeNSObject)
   method windowControllers =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "windowControllers:")[]) : [`NSArray] Objc.nativeNSObject)
   method addWindowController (windowController : [`NSWindowController] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addWindowController:")[make_pointer_from_object windowController]) : unit)
   method removeWindowController (windowController : [`NSWindowController] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeWindowController:")[make_pointer_from_object windowController]) : unit)
   method windowNibName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "windowNibName:")[]) : [`NSString] Objc.nativeNSObject)
   method makeWindowControllers =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "makeWindowControllers:")[]) : unit)
   method showWindows =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "showWindows:")[]) : unit)
   method shouldCloseWindowController  ~delegate:(delegate : [`NSObject] Objc.t ) ~shouldCloseSelector:(callback : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (windowController : [`NSWindowController] Objc.t) =
     let sel, args = (
       Objc.arg windowController "shouldCloseWindowController" make_pointer_from_object
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg callback "shouldCloseSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method setWindow (window : [`NSWindow] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setWindow:")[make_pointer_from_object window]) : unit)
   method windowControllerWillLoadNib (windowController : [`NSWindowController] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "windowControllerWillLoadNib:")[make_pointer_from_object windowController]) : unit)
   method windowControllerDidLoadNib (windowController : [`NSWindowController] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "windowControllerDidLoadNib:")[make_pointer_from_object windowController]) : unit)
   method displayName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "displayName:")[]) : [`NSString] Objc.nativeNSObject)
   method windowForSheet =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "windowForSheet:")[]) : [`NSWindow] Objc.nativeNSObject)
   method writableTypesForSaveOperation (saveOperation : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "writableTypesForSaveOperation:")[make_int saveOperation]) : [`NSArray] Objc.nativeNSObject)
   method validateUserInterfaceItem (anItem : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "validateUserInterfaceItem:")[make_pointer_from_object anItem]) : bool)
end
