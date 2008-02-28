(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDeprecated of NSDocument *)
class virtual methods_NSDocument = object (self)
  method virtual repr : [`NSDocument] Objc.id
  method dataRepresentationOfType (_type : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataRepresentationOfType:")
      [make_pointer_from_object _type]) : [`NSData] Objc.id))
  method fileAttributesToWriteToFile  ~ofType:(documentTypeName : [`NSString] Objc.t ) ~saveOperation:(saveOperationType : int ) (fullDocumentPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fullDocumentPath "fileAttributesToWriteToFile" make_pointer_from_object
      ++ Objc.arg documentTypeName "ofType" make_pointer_from_object
      ++ Objc.arg saveOperationType "saveOperation" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDictionary] Objc.id))
  method fileName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileName")[])
       : [`NSString] Objc.id))
  method fileWrapperRepresentationOfType (_type : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileWrapperRepresentationOfType:")
      [make_pointer_from_object _type]) : [`NSFileWrapper] Objc.id))
  method initWithContentsOfFile  ~ofType:(typeName : [`NSString] Objc.t ) (absolutePath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg absolutePath "initWithContentsOfFile" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithContentsOfURL:ofType *)
  method loadDataRepresentation  ~ofType:(_type : [`NSString] Objc.t ) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg data "loadDataRepresentation" make_pointer_from_object
      ++ Objc.arg _type "ofType" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method loadFileWrapperRepresentation  ~ofType:(_type : [`NSString] Objc.t ) (wrapper : [`NSFileWrapper] Objc.t) =
    let sel, args = (
      Objc.arg wrapper "loadFileWrapperRepresentation" make_pointer_from_object
      ++ Objc.arg _type "ofType" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method printShowingPrintPanel (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "printShowingPrintPanel:")
      [make_bool flag]) : unit)
  method readFromFile  ~ofType:(_type : [`NSString] Objc.t ) (fileName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fileName "readFromFile" make_pointer_from_object
      ++ Objc.arg _type "ofType" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  (* skipping selector readFromURL:ofType *)
  method revertToSavedFromFile  ~ofType:(_type : [`NSString] Objc.t ) (fileName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fileName "revertToSavedFromFile" make_pointer_from_object
      ++ Objc.arg _type "ofType" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method revertToSavedFromURL  ~ofType:(_type : [`NSString] Objc.t ) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "revertToSavedFromURL" make_pointer_from_object
      ++ Objc.arg _type "ofType" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  (* skipping selector runModalPageLayoutWithPrintInfo *)
  method saveToFile  ~saveOperation:(saveOperation : int ) ~delegate:(delegate : [`NSObject] Objc.t ) ~didSaveSelector:(didSaveSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (fileName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fileName "saveToFile" make_pointer_from_object
      ++ Objc.arg saveOperation "saveOperation" make_int
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didSaveSelector "didSaveSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setFileName (fileName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFileName:")
      [make_pointer_from_object fileName]) : unit)
  (* skipping selector writeToFile:ofType *)
  method writeToFile  ~ofType:(documentTypeName : [`NSString] Objc.t ) ?originalFile:(fullOriginalDocumentPath : [`NSString] Objc.t option) ?saveOperation:(saveOperationType : int option) (fullDocumentPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fullDocumentPath "writeToFile" make_pointer_from_object
      ++ Objc.arg documentTypeName "ofType" make_pointer_from_object
      ++ Objc.opt_arg fullOriginalDocumentPath "originalFile" make_pointer_from_object
      ++ Objc.opt_arg saveOperationType "saveOperation" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  (* skipping selector writeToURL:ofType *)
  method writeWithBackupToFile  ~ofType:(documentTypeName : [`NSString] Objc.t ) ~saveOperation:(saveOperationType : int ) (fullDocumentPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fullDocumentPath "writeWithBackupToFile" make_pointer_from_object
      ++ Objc.arg documentTypeName "ofType" make_pointer_from_object
      ++ Objc.arg saveOperationType "saveOperation" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
(* instance methods for category NSDeprecated of NSDocumentController *)
class virtual methods_NSDocumentController = object (self)
  method virtual repr : [`NSDocumentController] Objc.id
  method documentForFileName (fileName : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "documentForFileName:")
      [make_pointer_from_object fileName]) : [`NSObject] Objc.id)
  method fileNamesFromRunningOpenPanel =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileNamesFromRunningOpenPanel")[])
       : [`NSArray] Objc.id))
  method makeDocumentWithContentsOfFile  ~ofType:(_type : [`NSString] Objc.t ) (fileName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fileName "makeDocumentWithContentsOfFile" make_pointer_from_object
      ++ Objc.arg _type "ofType" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector makeDocumentWithContentsOfURL:ofType *)
  (* skipping selector makeUntitledDocumentOfType *)
  method openDocumentWithContentsOfFile  ~display:(display : bool ) (fileName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fileName "openDocumentWithContentsOfFile" make_pointer_from_object
      ++ Objc.arg display "display" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector openDocumentWithContentsOfURL:display *)
  method openUntitledDocumentOfType  ~display:(display : bool ) (_type : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _type "openUntitledDocumentOfType" make_pointer_from_object
      ++ Objc.arg display "display" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method setShouldCreateUI (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShouldCreateUI:")
      [make_bool flag]) : unit)
  method shouldCreateUI =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldCreateUI")[])
       : bool)
end
(* instance methods for category NSDeprecated of NSPrintOperation *)
class virtual methods_NSPrintOperation = object (self)
  method virtual repr : [`NSPrintOperation] Objc.id
  method setShowPanels (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowPanels:")
      [make_bool flag]) : unit)
  method showPanels =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "showPanels")[])
       : bool)
end
