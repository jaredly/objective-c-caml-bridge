(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDocumentController *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method documents =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "documents")[])
       : [`NSArray] Objc.id))
  method currentDocument =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currentDocument")[])
       : [`NSObject] Objc.id)
  method currentDirectory =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currentDirectory")[])
       : [`NSString] Objc.id))
  method documentForURL (absoluteURL : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "documentForURL:")
      [make_pointer_from_object absoluteURL]) : [`NSObject] Objc.id)
  method documentForWindow (window : [`NSWindow] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "documentForWindow:")
      [make_pointer_from_object window]) : [`NSObject] Objc.id)
  method addDocument (document : [`NSDocument] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addDocument:")
      [make_pointer_from_object document]) : unit)
  method removeDocument (document : [`NSDocument] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeDocument:")
      [make_pointer_from_object document]) : unit)
(*  UNSUPPORTED
  method newDocument (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "newDocument:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
  method openUntitledDocumentAndDisplay_error  (displayDocument : bool) (outError : bool) =
    let sel, args = (
      Objc.arg displayDocument "openUntitledDocumentAndDisplay" make_bool
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method makeUntitledDocumentOfType_error  (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg typeName "makeUntitledDocumentOfType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method openDocument (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "openDocument:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
  method urlsFromRunningOpenPanel =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "URLsFromRunningOpenPanel")[])
       : [`NSArray] Objc.id))
  method runModalOpenPanel_forTypes  (openPanel : [`NSOpenPanel] Objc.t) (fileNameExtensionsAndHFSFileTypes : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg openPanel "runModalOpenPanel" make_pointer_from_object
      ++ Objc.arg fileNameExtensionsAndHFSFileTypes "forTypes" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method openDocumentWithContentsOfURL_display_error  (absoluteURL : [`NSURL] Objc.t) (displayDocument : bool) (outError : bool) =
    let sel, args = (
      Objc.arg absoluteURL "openDocumentWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg displayDocument "display" make_bool
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method makeDocumentWithContentsOfURL_ofType_error  (absoluteURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg absoluteURL "makeDocumentWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method reopenDocumentForURL_withContentsOfURL_error  (absoluteDocumentURL : [`NSURL] Objc.t) (absoluteDocumentContentsURL : [`NSURL] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg absoluteDocumentURL "reopenDocumentForURL" make_pointer_from_object
      ++ Objc.arg absoluteDocumentContentsURL "withContentsOfURL" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method makeDocumentForURL_withContentsOfURL_ofType_error  (absoluteDocumentURL : [`NSURL] Objc.t) (absoluteDocumentContentsURL : [`NSURL] Objc.t) (typeName : [`NSString] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg absoluteDocumentURL "makeDocumentForURL" make_pointer_from_object
      ++ Objc.arg absoluteDocumentContentsURL "withContentsOfURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method setAutosavingDelay (autosavingDelay : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutosavingDelay:")
      [make_float autosavingDelay]) : unit)
  method autosavingDelay =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "autosavingDelay")[])
       : float)
(*  UNSUPPORTED
  method saveAllDocuments (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "saveAllDocuments:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
  method hasEditedDocuments =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasEditedDocuments")[])
       : bool)
  method reviewUnsavedDocumentsWithAlertTitle_cancellable_delegate_didReviewAllSelector_contextInfo  (title : [`NSString] Objc.t) (cancellable : bool) (delegate : [`NSObject] Objc.t) (didReviewAllSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg title "reviewUnsavedDocumentsWithAlertTitle" make_pointer_from_object
      ++ Objc.arg cancellable "cancellable" make_bool
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didReviewAllSelector "didReviewAllSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method closeAllDocumentsWithDelegate_didCloseAllSelector_contextInfo  (delegate : [`NSObject] Objc.t) (didCloseAllSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg delegate "closeAllDocumentsWithDelegate" make_pointer_from_object
      ++ Objc.arg didCloseAllSelector "didCloseAllSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
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
  method maximumRecentDocumentCount =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "maximumRecentDocumentCount")[])
       : int)
(*  UNSUPPORTED
  method clearRecentDocuments (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "clearRecentDocuments:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
  method noteNewRecentDocument (document : [`NSDocument] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "noteNewRecentDocument:")
      [make_pointer_from_object document]) : unit)
  method noteNewRecentDocumentURL (absoluteURL : [`NSURL] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "noteNewRecentDocumentURL:")
      [make_pointer_from_object absoluteURL]) : unit)
  method recentDocumentURLs =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "recentDocumentURLs")[])
       : [`NSArray] Objc.id))
  method defaultType =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "defaultType")[])
       : [`NSString] Objc.id))
  method typeForContentsOfURL_error  (inAbsoluteURL : [`NSURL] Objc.t) (outError : bool) =
    let sel, args = (
      Objc.arg inAbsoluteURL "typeForContentsOfURL" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method documentClassNames =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "documentClassNames")[])
       : [`NSArray] Objc.id))
  method typeFromFileExtension (fileNameExtensionOrHFSFileType : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "typeFromFileExtension:")
      [make_pointer_from_object fileNameExtensionOrHFSFileType]) : [`NSString] Objc.id))
  method documentClassForType (typeName : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "documentClassForType:")
      [make_pointer_from_object typeName]) : [`NSObject] Objc.id)
  method displayNameForType (typeName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "displayNameForType:")
      [make_pointer_from_object typeName]) : [`NSString] Objc.id))
  method fileExtensionsFromType (typeName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileExtensionsFromType:")
      [make_pointer_from_object typeName]) : [`NSArray] Objc.id))
  method validateUserInterfaceItem (anItem : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "validateUserInterfaceItem:")
      [make_pointer_from_object anItem]) : bool)
end
