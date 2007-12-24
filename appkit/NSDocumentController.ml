(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSNibDeclarations
open NSUserInterfaceValidation
open NSDate


external init : unit -> unit = "caml_init_NSDocumentController"
let _ = init()
let make_NSObject_of_NSDocumentController (o : [`NSDocumentController] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSDocumentController *)
let class_NSDocumentController = object
   val repr = Classes.find "NSDocumentController"
   method _new = (Objc.objcnew repr : [`NSDocumentController] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSDocumentController] nativeNSObject)
(* methods for category NSDeprecated *)
   method sharedDocumentController =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedDocumentController:")[]) : [`NSDocumentController] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSDocumentController *)
class native_NSDocumentController = fun (o : [`NSDocumentController] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSDocumentController o) as super
(* methods for category NSDeprecated *)
   method documentForFileName (fileName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "documentForFileName:")[make_pointer_from_object fileName]) : [`NSObject] Objc.nativeNSObject)
   method fileNamesFromRunningOpenPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileNamesFromRunningOpenPanel:")[]) : [`NSArray] Objc.nativeNSObject)
   method makeDocumentWithContentsOfFile  ~ofType:(_type : [`NSString] Objc.t ) (fileName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fileName "makeDocumentWithContentsOfFile" make_pointer_from_object
       ++ Objc.arg _type "ofType" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector makeDocumentWithContentsOfURL:ofType *)
   (* skipping selector makeUntitledDocumentOfType *)
   method openDocumentWithContentsOfFile  ~display:(display : bool ) (fileName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fileName "openDocumentWithContentsOfFile" make_pointer_from_object
       ++ Objc.arg display "display" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector openDocumentWithContentsOfURL:display *)
   method openUntitledDocumentOfType  ~display:(display : bool ) (_type : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg _type "openUntitledDocumentOfType" make_pointer_from_object
       ++ Objc.arg display "display" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method setShouldCreateUI (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShouldCreateUI:")[make_bool flag]) : unit)
   method shouldCreateUI =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "shouldCreateUI:")[]) : bool)
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method documents =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "documents:")[]) : [`NSArray] Objc.nativeNSObject)
   method currentDocument =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentDocument:")[]) : [`NSObject] Objc.nativeNSObject)
   method currentDirectory =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentDirectory:")[]) : [`NSString] Objc.nativeNSObject)
   method documentForURL (absoluteURL : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "documentForURL:")[make_pointer_from_object absoluteURL]) : [`NSObject] Objc.nativeNSObject)
   method documentForWindow (window : [`NSWindow] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "documentForWindow:")[make_pointer_from_object window]) : [`NSObject] Objc.nativeNSObject)
   method addDocument (document : [`NSDocument] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addDocument:")[make_pointer_from_object document]) : unit)
   method removeDocument (document : [`NSDocument] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeDocument:")[make_pointer_from_object document]) : unit)
(*  UNSUPPORTED
   method newDocument (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported repr (Selector.find "newDocument:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
   method openUntitledDocumentAndDisplay  ~error:(outError : bool ) (displayDocument : bool) =
     let sel, args = (
       Objc.arg displayDocument "openUntitledDocumentAndDisplay" make_bool
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method makeUntitledDocumentOfType  ?error:(outError : bool option) (typeName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg typeName "makeUntitledDocumentOfType" make_pointer_from_object
       ++ Objc.opt_arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method openDocument (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported repr (Selector.find "openDocument:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
   method l_URLsFromRunningOpenPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_URLsFromRunningOpenPanel:")[]) : [`NSArray] Objc.nativeNSObject)
   method runModalOpenPanel  ~forTypes:(fileNameExtensionsAndHFSFileTypes : [`NSArray] Objc.t ) (openPanel : [`NSOpenPanel] Objc.t) =
     let sel, args = (
       Objc.arg openPanel "runModalOpenPanel" make_pointer_from_object
       ++ Objc.arg fileNameExtensionsAndHFSFileTypes "forTypes" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
   method openDocumentWithContentsOfURL  ~display:(displayDocument : bool ) ?error:(outError : bool option) (absoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteURL "openDocumentWithContentsOfURL" make_pointer_from_object
       ++ Objc.arg displayDocument "display" make_bool
       ++ Objc.opt_arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method makeDocumentWithContentsOfURL  ~ofType:(typeName : [`NSString] Objc.t ) ?error:(outError : bool option) (absoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteURL "makeDocumentWithContentsOfURL" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.opt_arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method reopenDocumentForURL  ~withContentsOfURL:(absoluteDocumentContentsURL : [`NSURL] Objc.t ) ~error:(outError : bool ) (absoluteDocumentURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteDocumentURL "reopenDocumentForURL" make_pointer_from_object
       ++ Objc.arg absoluteDocumentContentsURL "withContentsOfURL" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method makeDocumentForURL  ~withContentsOfURL:(absoluteDocumentContentsURL : [`NSURL] Objc.t ) ~ofType:(typeName : [`NSString] Objc.t ) ~error:(outError : bool ) (absoluteDocumentURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteDocumentURL "makeDocumentForURL" make_pointer_from_object
       ++ Objc.arg absoluteDocumentContentsURL "withContentsOfURL" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method setAutosavingDelay (autosavingDelay : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutosavingDelay:")[make_float autosavingDelay]) : unit)
   method autosavingDelay =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "autosavingDelay:")[]) : float)
(*  UNSUPPORTED
   method saveAllDocuments (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported repr (Selector.find "saveAllDocuments:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
   method hasEditedDocuments =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasEditedDocuments:")[]) : bool)
   method reviewUnsavedDocumentsWithAlertTitle  ~cancellable:(cancellable : bool ) ~delegate:(delegate : [`NSObject] Objc.t ) ~didReviewAllSelector:(didReviewAllSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (title : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg title "reviewUnsavedDocumentsWithAlertTitle" make_pointer_from_object
       ++ Objc.arg cancellable "cancellable" make_bool
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg didReviewAllSelector "didReviewAllSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method closeAllDocumentsWithDelegate  ~didCloseAllSelector:(didCloseAllSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (delegate : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg delegate "closeAllDocumentsWithDelegate" make_pointer_from_object
       ++ Objc.arg didCloseAllSelector "didCloseAllSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method presentError  ?modalForWindow:(window : [`NSWindow] Objc.t option) ?delegate:(delegate : [`NSObject] Objc.t option) ?didPresentSelector:(didPresentSelector : selector option) ?contextInfo:(contextInfo : [`void] Objc.t option) (error : [`NSError] Objc.t) =
     let sel, args = (
       Objc.arg error "presentError" make_pointer_from_object
       ++ Objc.opt_arg window "modalForWindow" make_pointer_from_object
       ++ Objc.opt_arg delegate "delegate" make_pointer_from_object
       ++ Objc.opt_arg didPresentSelector "didPresentSelector" make_selector
       ++ Objc.opt_arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector presentError *)
   method willPresentError (error : [`NSError] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "willPresentError:")[make_pointer_from_object error]) : [`NSError] Objc.nativeNSObject)
   method maximumRecentDocumentCount =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "maximumRecentDocumentCount:")[]) : int)
(*  UNSUPPORTED
   method clearRecentDocuments (sender : [`NSObject] Objc.t) =
     ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported repr (Selector.find "clearRecentDocuments:")[make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
   method noteNewRecentDocument (document : [`NSDocument] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "noteNewRecentDocument:")[make_pointer_from_object document]) : unit)
   method noteNewRecentDocumentURL (absoluteURL : [`NSURL] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "noteNewRecentDocumentURL:")[make_pointer_from_object absoluteURL]) : unit)
   method recentDocumentURLs =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "recentDocumentURLs:")[]) : [`NSArray] Objc.nativeNSObject)
   method defaultType =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultType:")[]) : [`NSString] Objc.nativeNSObject)
   method typeForContentsOfURL  ~error:(outError : bool ) (inAbsoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg inAbsoluteURL "typeForContentsOfURL" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method documentClassNames =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "documentClassNames:")[]) : [`NSArray] Objc.nativeNSObject)
   method typeFromFileExtension (fileNameExtensionOrHFSFileType : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "typeFromFileExtension:")[make_pointer_from_object fileNameExtensionOrHFSFileType]) : [`NSString] Objc.nativeNSObject)
   method documentClassForType (typeName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "documentClassForType:")[make_pointer_from_object typeName]) : [`NSObject] Objc.nativeNSObject)
   method displayNameForType (typeName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "displayNameForType:")[make_pointer_from_object typeName]) : [`NSString] Objc.nativeNSObject)
   method fileExtensionsFromType (typeName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileExtensionsFromType:")[make_pointer_from_object typeName]) : [`NSArray] Objc.nativeNSObject)
   method validateUserInterfaceItem (anItem : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "validateUserInterfaceItem:")[make_pointer_from_object anItem]) : bool)
end
