(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSText
open NSInputManager
open NSTextAttachment
open NSDragging
open NSUserInterfaceValidation


external init : unit -> unit = "caml_init_NSTextView"
let _ = init()
let make_NSText_of_NSTextView (o : [`NSTextView] nativeNSObject) = (Obj.magic o : [`NSText] nativeNSObject)
(* Class object for NSTextView *)
let class_NSTextView = object
   val repr = Classes.find "NSTextView"
   method _new = (Objc.objcnew repr : [`NSTextView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTextView] nativeNSObject)
(* methods for category NSSharing *)
(* methods for category NSDragging *)
(* methods for category NSPasteboard *)
   method registerForServices =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "registerForServices:")[]) : [`NSTextView] Objc.nativeNSObject)
(* methods for category NSCompletion *)
end
(* Encapsulation for native instance of NSTextView *)
class native_NSTextView = fun (o : [`NSTextView] nativeNSObject) -> object (self)
   inherit native_NSText (make_NSText_of_NSTextView o) as super
(* methods for category NSSharing *)
   method selectedRanges =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "selectedRanges:")[]) : [`NSArray] Objc.nativeNSObject)
   method setSelectedRanges  ?affinity:(affinity : int option) ?stillSelecting:(stillSelectingFlag : bool option) (ranges : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg ranges "setSelectedRanges" make_pointer_from_object
       ++ Objc.opt_arg affinity "affinity" make_int
       ++ Objc.opt_arg stillSelectingFlag "stillSelecting" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector setSelectedRanges *)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method setSelectedRange  ?affinity:(affinity : int option) ?stillSelecting:(stillSelectingFlag : bool option) (charRange : int * int) =
     let sel, args = (
       Objc.arg charRange "setSelectedRange" make_range
       ++ Objc.opt_arg affinity "affinity" make_int
       ++ Objc.opt_arg stillSelectingFlag "stillSelecting" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method selectionAffinity =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "selectionAffinity:")[]) : int)
   method selectionGranularity =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "selectionGranularity:")[]) : int)
   method setSelectionGranularity (granularity : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSelectionGranularity:")[make_int granularity]) : unit)
   method setSelectedTextAttributes (attributeDictionary : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSelectedTextAttributes:")[make_pointer_from_object attributeDictionary]) : unit)
   method selectedTextAttributes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "selectedTextAttributes:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setInsertionPointColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setInsertionPointColor:")[make_pointer_from_object color]) : unit)
   method insertionPointColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "insertionPointColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method updateInsertionPointStateAndRestartTimer (restartFlag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "updateInsertionPointStateAndRestartTimer:")[make_bool restartFlag]) : unit)
   method setMarkedTextAttributes (attributeDictionary : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMarkedTextAttributes:")[make_pointer_from_object attributeDictionary]) : unit)
   method markedTextAttributes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "markedTextAttributes:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setLinkTextAttributes (attributeDictionary : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLinkTextAttributes:")[make_pointer_from_object attributeDictionary]) : unit)
   method linkTextAttributes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "linkTextAttributes:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setRulerVisible (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRulerVisible:")[make_bool flag]) : unit)
   method usesRuler =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "usesRuler:")[]) : bool)
   method setUsesRuler (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setUsesRuler:")[make_bool flag]) : unit)
   method setContinuousSpellCheckingEnabled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContinuousSpellCheckingEnabled:")[make_bool flag]) : unit)
   method isContinuousSpellCheckingEnabled =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isContinuousSpellCheckingEnabled:")[]) : bool)
   method toggleContinuousSpellChecking (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "toggleContinuousSpellChecking:")[make_pointer_from_object sender]) : unit)
   method spellCheckerDocumentTag =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "spellCheckerDocumentTag:")[]) : int)
   method typingAttributes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "typingAttributes:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setTypingAttributes (attrs : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTypingAttributes:")[make_pointer_from_object attrs]) : unit)
   method shouldChangeTextInRanges  ~replacementStrings:(replacementStrings : [`NSArray] Objc.t ) (affectedRanges : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg affectedRanges "shouldChangeTextInRanges" make_pointer_from_object
       ++ Objc.arg replacementStrings "replacementStrings" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method rangesForUserTextChange =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "rangesForUserTextChange:")[]) : [`NSArray] Objc.nativeNSObject)
   method rangesForUserCharacterAttributeChange =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "rangesForUserCharacterAttributeChange:")[]) : [`NSArray] Objc.nativeNSObject)
   method rangesForUserParagraphAttributeChange =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "rangesForUserParagraphAttributeChange:")[]) : [`NSArray] Objc.nativeNSObject)
   method shouldChangeTextInRange  ~replacementString:(replacementString : [`NSString] Objc.t ) (affectedCharRange : int * int) =
     let sel, args = (
       Objc.arg affectedCharRange "shouldChangeTextInRange" make_range
       ++ Objc.arg replacementString "replacementString" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method didChangeText =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "didChangeText:")[]) : unit)
   method rangeForUserTextChange =
     (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find "rangeForUserTextChange:")[]) : (int * int))
   method rangeForUserCharacterAttributeChange =
     (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find "rangeForUserCharacterAttributeChange:")[]) : (int * int))
   method rangeForUserParagraphAttributeChange =
     (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find "rangeForUserParagraphAttributeChange:")[]) : (int * int))
   method setUsesFindPanel (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setUsesFindPanel:")[make_bool flag]) : unit)
   method usesFindPanel =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "usesFindPanel:")[]) : bool)
   method setAllowsDocumentBackgroundColorChange (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsDocumentBackgroundColorChange:")[make_bool flag]) : unit)
   method allowsDocumentBackgroundColorChange =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsDocumentBackgroundColorChange:")[]) : bool)
   method setDefaultParagraphStyle (paragraphStyle : [`NSParagraphStyle] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDefaultParagraphStyle:")[make_pointer_from_object paragraphStyle]) : unit)
   method defaultParagraphStyle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultParagraphStyle:")[]) : [`NSParagraphStyle] Objc.nativeNSObject)
   method breakUndoCoalescing =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "breakUndoCoalescing:")[]) : unit)
   method isSelectable =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isSelectable:")[]) : bool)
   method setSelectable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSelectable:")[make_bool flag]) : unit)
   method isEditable =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEditable:")[]) : bool)
   method setEditable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEditable:")[make_bool flag]) : unit)
   method isRichText =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isRichText:")[]) : bool)
   method setRichText (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRichText:")[make_bool flag]) : unit)
   method importsGraphics =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "importsGraphics:")[]) : bool)
   method setImportsGraphics (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImportsGraphics:")[make_bool flag]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method isFieldEditor =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isFieldEditor:")[]) : bool)
   method setFieldEditor (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFieldEditor:")[make_bool flag]) : unit)
   method usesFontPanel =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "usesFontPanel:")[]) : bool)
   method setUsesFontPanel (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setUsesFontPanel:")[make_bool flag]) : unit)
   method isRulerVisible =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isRulerVisible:")[]) : bool)
   method setBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBackgroundColor:")[make_pointer_from_object color]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setDrawsBackground (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDrawsBackground:")[make_bool flag]) : unit)
   method drawsBackground =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "drawsBackground:")[]) : bool)
   (* skipping selector setSelectedRange *)
   method allowsUndo =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsUndo:")[]) : bool)
   method setAllowsUndo (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsUndo:")[make_bool flag]) : unit)
   method resignFirstResponder =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "resignFirstResponder:")[]) : bool)
   method becomeFirstResponder =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "becomeFirstResponder:")[]) : bool)
   method smartInsertDeleteEnabled =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "smartInsertDeleteEnabled:")[]) : bool)
   method setSmartInsertDeleteEnabled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSmartInsertDeleteEnabled:")[make_bool flag]) : unit)
   method smartDeleteRangeForProposedRange (proposedCharRange : int * int) =
     (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find "smartDeleteRangeForProposedRange:")[make_range proposedCharRange]) : (int * int))
(*  UNSUPPORTED
   method smartInsertForString  ~replacingRange:(charRangeToReplace : (int * int) ) ~beforeString:(beforeString : (*pointer to pointer to NSString*) unsupported ) ~afterString:(afterString : (*pointer to pointer to NSString*) unsupported ) (pasteString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg pasteString "smartInsertForString" make_pointer_from_object
       ++ Objc.arg charRangeToReplace "replacingRange" make_range
       ++ Objc.arg beforeString "beforeString" (*pointer to pointer to NSString*) unsupported
       ++ Objc.arg afterString "afterString" (*pointer to pointer to NSString*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method smartInsertBeforeStringForString  ~replacingRange:(charRangeToReplace : (int * int) ) (pasteString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg pasteString "smartInsertBeforeStringForString" make_pointer_from_object
       ++ Objc.arg charRangeToReplace "replacingRange" make_range
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method smartInsertAfterStringForString  ~replacingRange:(charRangeToReplace : (int * int) ) (pasteString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg pasteString "smartInsertAfterStringForString" make_pointer_from_object
       ++ Objc.arg charRangeToReplace "replacingRange" make_range
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
(* methods for category NSDragging *)
(*  UNSUPPORTED
   method dragSelectionWithEvent  ~offset:(mouseOffset : (*NSSize*) unsupported ) ~slideBack:(slideBack : bool ) (event : [`NSEvent] Objc.t) =
     let sel, args = (
       Objc.arg event "dragSelectionWithEvent" make_pointer_from_object
       ++ Objc.arg mouseOffset "offset" (*NSSize*) unsupported
       ++ Objc.arg slideBack "slideBack" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
(*  UNSUPPORTED
   method dragImageForSelectionWithEvent  ~origin:(origin : (*NSPointPointer*) unsupported ) (event : [`NSEvent] Objc.t) =
     let sel, args = (
       Objc.arg event "dragImageForSelectionWithEvent" make_pointer_from_object
       ++ Objc.arg origin "origin" (*NSPointPointer*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSImage] Objc.nativeNSObject)

*)
   method acceptableDragTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "acceptableDragTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method dragOperationForDraggingInfo  ~l_type:(_type : [`NSString] Objc.t ) (dragInfo : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg dragInfo "dragOperationForDraggingInfo" make_pointer_from_object
       ++ Objc.arg _type "l_type" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
   method cleanUpAfterDragOperation =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "cleanUpAfterDragOperation:")[]) : unit)
   method acceptsGlyphInfo =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "acceptsGlyphInfo:")[]) : bool)
   method setAcceptsGlyphInfo (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAcceptsGlyphInfo:")[make_bool flag]) : unit)
(* methods for category NSPasteboard *)
   method writablePasteboardTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "writablePasteboardTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method writeSelectionToPasteboard  ~l_type:(_type : [`NSString] Objc.t ) (pboard : [`NSPasteboard] Objc.t) =
     let sel, args = (
       Objc.arg pboard "writeSelectionToPasteboard" make_pointer_from_object
       ++ Objc.arg _type "l_type" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   (* skipping selector writeSelectionToPasteboard:types *)
   method readablePasteboardTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "readablePasteboardTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method preferredPasteboardTypeFromArray  ~restrictedToTypesFromArray:(allowedTypes : [`NSArray] Objc.t ) (availableTypes : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg availableTypes "preferredPasteboardTypeFromArray" make_pointer_from_object
       ++ Objc.arg allowedTypes "restrictedToTypesFromArray" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method readSelectionFromPasteboard  ?l_type:(_type : [`NSString] Objc.t option) (pboard : [`NSPasteboard] Objc.t) =
     let sel, args = (
       Objc.arg pboard "readSelectionFromPasteboard" make_pointer_from_object
       ++ Objc.opt_arg _type "l_type" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   (* skipping selector readSelectionFromPasteboard *)
   method validRequestorForSendType  ~returnType:(returnType : [`NSString] Objc.t ) (sendType : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg sendType "validRequestorForSendType" make_pointer_from_object
       ++ Objc.arg returnType "returnType" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method pasteAsPlainText (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "pasteAsPlainText:")[make_pointer_from_object sender]) : unit)
   method pasteAsRichText (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "pasteAsRichText:")[make_pointer_from_object sender]) : unit)
(* methods for category NSCompletion *)
   method complete (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "complete:")[make_pointer_from_object sender]) : unit)
   method rangeForUserCompletion =
     (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find "rangeForUserCompletion:")[]) : (int * int))
   method completionsForPartialWordRange  ~indexOfSelectedItem:(index : [`int] Objc.t ) (charRange : int * int) =
     let sel, args = (
       Objc.arg charRange "completionsForPartialWordRange" make_range
       ++ Objc.arg index "indexOfSelectedItem" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSArray] Objc.nativeNSObject)
   method insertCompletion  ~forPartialWordRange:(charRange : (int * int) ) ~movement:(movement : int ) ~isFinal:(flag : bool ) (word : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg word "insertCompletion" make_pointer_from_object
       ++ Objc.arg charRange "forPartialWordRange" make_range
       ++ Objc.arg movement "movement" make_int
       ++ Objc.arg flag "isFinal" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
(*  UNSUPPORTED
   method initWithFrame  ?textContainer:(container : [`NSTextContainer] Objc.t option) (frameRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg frameRect "initWithFrame" (*NSRect*) unsupported
       ++ Objc.opt_arg container "textContainer" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   (* skipping selector initWithFrame *)
   method textContainer =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "textContainer:")[]) : [`NSTextContainer] Objc.nativeNSObject)
   method setTextContainer (container : [`NSTextContainer] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTextContainer:")[make_pointer_from_object container]) : unit)
   method replaceTextContainer (newContainer : [`NSTextContainer] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "replaceTextContainer:")[make_pointer_from_object newContainer]) : unit)
(*  UNSUPPORTED
   method setTextContainerInset (inset : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTextContainerInset:")[(*NSSize*) unsupported inset]) : unit)

*)
(*  UNSUPPORTED
   method textContainerInset =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "textContainerInset:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method textContainerOrigin =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find "textContainerOrigin:")[]) : (*NSPoint*) unsupported)

*)
   method invalidateTextContainerOrigin =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "invalidateTextContainerOrigin:")[]) : unit)
   method layoutManager =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "layoutManager:")[]) : [`NSLayoutManager] Objc.nativeNSObject)
   method textStorage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "textStorage:")[]) : [`NSTextStorage] Objc.nativeNSObject)
   method insertText (insertString : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "insertText:")[make_pointer_from_object insertString]) : unit)
(*  UNSUPPORTED
   method setConstrainedFrameSize (desiredSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setConstrainedFrameSize:")[(*NSSize*) unsupported desiredSize]) : unit)

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method setAlignment  ~range:(range : (int * int) ) (alignment : int) =
     let sel, args = (
       Objc.arg alignment "setAlignment" make_int
       ++ Objc.arg range "range" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method setBaseWritingDirection  ~range:(range : (int * int) ) (writingDirection : int) =
     let sel, args = (
       Objc.arg writingDirection "setBaseWritingDirection" make_int
       ++ Objc.arg range "range" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method turnOffKerning (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "turnOffKerning:")[make_pointer_from_object sender]) : unit)
   method tightenKerning (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "tightenKerning:")[make_pointer_from_object sender]) : unit)
   method loosenKerning (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "loosenKerning:")[make_pointer_from_object sender]) : unit)
   method useStandardKerning (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "useStandardKerning:")[make_pointer_from_object sender]) : unit)
   method turnOffLigatures (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "turnOffLigatures:")[make_pointer_from_object sender]) : unit)
   method useStandardLigatures (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "useStandardLigatures:")[make_pointer_from_object sender]) : unit)
   method useAllLigatures (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "useAllLigatures:")[make_pointer_from_object sender]) : unit)
   method raiseBaseline (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "raiseBaseline:")[make_pointer_from_object sender]) : unit)
   method lowerBaseline (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "lowerBaseline:")[make_pointer_from_object sender]) : unit)
   method toggleTraditionalCharacterShape (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "toggleTraditionalCharacterShape:")[make_pointer_from_object sender]) : unit)
   method outline (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "outline:")[make_pointer_from_object sender]) : unit)
   method performFindPanelAction (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "performFindPanelAction:")[make_pointer_from_object sender]) : unit)
   method alignJustified (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "alignJustified:")[make_pointer_from_object sender]) : unit)
   method changeColor (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "changeColor:")[make_pointer_from_object sender]) : unit)
   method changeAttributes (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "changeAttributes:")[make_pointer_from_object sender]) : unit)
   method changeDocumentBackgroundColor (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "changeDocumentBackgroundColor:")[make_pointer_from_object sender]) : unit)
   method toggleBaseWritingDirection (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "toggleBaseWritingDirection:")[make_pointer_from_object sender]) : unit)
   method orderFrontSpacingPanel (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderFrontSpacingPanel:")[make_pointer_from_object sender]) : unit)
   method orderFrontLinkPanel (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderFrontLinkPanel:")[make_pointer_from_object sender]) : unit)
   method orderFrontListPanel (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderFrontListPanel:")[make_pointer_from_object sender]) : unit)
   method orderFrontTablePanel (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderFrontTablePanel:")[make_pointer_from_object sender]) : unit)
   (* skipping selector rulerView:didMoveMarker *)
   (* skipping selector rulerView:didRemoveMarker *)
   (* skipping selector rulerView:didAddMarker *)
   (* skipping selector rulerView:shouldMoveMarker *)
   (* skipping selector rulerView:shouldAddMarker *)
   method rulerView  ?willMoveMarker:(marker : [`NSRulerMarker] Objc.t option) ?toLocation:(location : float option) (ruler : [`NSRulerView] Objc.t) =
     let sel, args = (
       Objc.arg ruler "rulerView" make_pointer_from_object
       ++ Objc.opt_arg marker "willMoveMarker" make_pointer_from_object
       ++ Objc.opt_arg location "toLocation" make_float
     ) ([],[]) in
       (get_float (Objc.invoke Objc.tag_float repr (Selector.find_list sel) args) : float)
   (* skipping selector rulerView:shouldRemoveMarker *)
   (* skipping selector rulerView:willAddMarker:atLocation *)
   (* skipping selector rulerView:handleMouseDown *)
(*  UNSUPPORTED
   method setNeedsDisplayInRect  ~avoidAdditionalLayout:(flag : bool ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "setNeedsDisplayInRect" (*NSRect*) unsupported
       ++ Objc.arg flag "avoidAdditionalLayout" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method shouldDrawInsertionPoint =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "shouldDrawInsertionPoint:")[]) : bool)
(*  UNSUPPORTED
   method drawInsertionPointInRect  ~color:(color : [`NSColor] Objc.t ) ~turnedOn:(flag : bool ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "drawInsertionPointInRect" (*NSRect*) unsupported
       ++ Objc.arg color "color" make_pointer_from_object
       ++ Objc.arg flag "turnedOn" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method drawViewBackgroundInRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawViewBackgroundInRect:")[(*NSRect*) unsupported rect]) : unit)

*)
   method updateRuler =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "updateRuler:")[]) : unit)
   method updateFontPanel =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "updateFontPanel:")[]) : unit)
   method updateDragTypeRegistration =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "updateDragTypeRegistration:")[]) : unit)
   method selectionRangeForProposedRange  ~granularity:(granularity : int ) (proposedCharRange : int * int) =
     let sel, args = (
       Objc.arg proposedCharRange "selectionRangeForProposedRange" make_range
       ++ Objc.arg granularity "granularity" make_int
     ) ([],[]) in
       (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find_list sel) args) : (int * int))
   method clickedOnLink  ~atIndex:(charIndex : int ) (link : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg link "clickedOnLink" make_pointer_from_object
       ++ Objc.arg charIndex "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method startSpeaking (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "startSpeaking:")[make_pointer_from_object sender]) : unit)
   method stopSpeaking (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "stopSpeaking:")[make_pointer_from_object sender]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSTextViewDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSTextViewDelegate *)
   (* skipping selector textView:clickedOnLink:atIndex *)
   (* skipping selector textView:clickedOnCell:inRect:atIndex *)
   (* skipping selector textView:doubleClickedOnCell:inRect:atIndex *)
(*  UNSUPPORTED
   method textView  ?draggedCell:(cell : [`NSObject] Objc.t option) ?inRect:(rect : (*NSRect*) unsupported option) ?event:(event : [`NSEvent] Objc.t option) ?atIndex:(charIndex : int option) (view : [`NSTextView] Objc.t) =
     let sel, args = (
       Objc.arg view "textView" make_pointer_from_object
       ++ Objc.opt_arg cell "draggedCell" make_pointer_from_object
       ++ Objc.opt_arg rect "inRect" (*NSRect*) unsupported
       ++ Objc.opt_arg event "event" make_pointer_from_object
       ++ Objc.opt_arg charIndex "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   (* skipping selector textView:writablePasteboardTypesForCell:atIndex *)
   (* skipping selector textView:writeCell:atIndex:toPasteboard:l_type *)
   (* skipping selector textView:willChangeSelectionFromCharacterRange:toCharacterRange *)
   (* skipping selector textView:willChangeSelectionFromCharacterRanges:toCharacterRanges *)
   (* skipping selector textView:shouldChangeTextInRanges:replacementStrings *)
   (* skipping selector textView:shouldChangeTypingAttributes:toAttributes *)
   method textViewDidChangeSelection (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "textViewDidChangeSelection:")[make_pointer_from_object notification]) : unit)
   method textViewDidChangeTypingAttributes (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "textViewDidChangeTypingAttributes:")[make_pointer_from_object notification]) : unit)
   (* skipping selector textView:willDisplayToolTip:forCharacterAtIndex *)
   (* skipping selector textView:completions:forPartialWordRange:indexOfSelectedItem *)
   (* skipping selector textView:shouldChangeTextInRange:replacementString *)
   (* skipping selector textView:doCommandBySelector *)
   (* skipping selector textView:clickedOnLink *)
   (* skipping selector textView:clickedOnCell:inRect *)
   (* skipping selector textView:doubleClickedOnCell:inRect *)
   (* skipping selector textView:draggedCell:inRect:event *)
   method undoManagerForTextView (view : [`NSTextView] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "undoManagerForTextView:")[make_pointer_from_object view]) : [`NSUndoManager] Objc.nativeNSObject)
end
