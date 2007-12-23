open Objc
open NSObject


external init : unit -> unit = "caml_init_NSResponder"
let _ = init()
(* Class object for NSResponder *)
let class_NSResponder = object
   val o = Classes.find "NSResponder"
   method _new = (Objc.objcnew o : [`NSResponder] nativeNSObject)
(* methods for category NSErrorPresentation *)
(* methods for category NSUndoSupport *)
(* methods for category NSStandardKeyBindingMethods *)
(* methods for category NSKeyboardUI *)
end
(* Encapsulation for native instance of NSResponder *)
class native_NSResponder = fun (o : [`NSResponder] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSErrorPresentation *)
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
(* methods for category NSUndoSupport *)
   method undoManager =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "undoManager:")[]) : [`NSUndoManager] Objc.nativeNSObject)
(* methods for category NSStandardKeyBindingMethods *)
   method insertText (insertString : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "insertText:")[make_pointer_from_object insertString]) : unit)
   method doCommandBySelector (aSelector : selector) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "doCommandBySelector:")[make_selector aSelector]) : unit)
   method moveForward (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveForward:")[make_pointer_from_object sender]) : unit)
   method moveRight (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveRight:")[make_pointer_from_object sender]) : unit)
   method moveBackward (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveBackward:")[make_pointer_from_object sender]) : unit)
   method moveLeft (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveLeft:")[make_pointer_from_object sender]) : unit)
   method moveUp (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveUp:")[make_pointer_from_object sender]) : unit)
   method moveDown (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveDown:")[make_pointer_from_object sender]) : unit)
   method moveWordForward (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveWordForward:")[make_pointer_from_object sender]) : unit)
   method moveWordBackward (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveWordBackward:")[make_pointer_from_object sender]) : unit)
   method moveToBeginningOfLine (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveToBeginningOfLine:")[make_pointer_from_object sender]) : unit)
   method moveToEndOfLine (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveToEndOfLine:")[make_pointer_from_object sender]) : unit)
   method moveToBeginningOfParagraph (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveToBeginningOfParagraph:")[make_pointer_from_object sender]) : unit)
   method moveToEndOfParagraph (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveToEndOfParagraph:")[make_pointer_from_object sender]) : unit)
   method moveToEndOfDocument (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveToEndOfDocument:")[make_pointer_from_object sender]) : unit)
   method moveToBeginningOfDocument (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveToBeginningOfDocument:")[make_pointer_from_object sender]) : unit)
   method pageDown (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pageDown:")[make_pointer_from_object sender]) : unit)
   method pageUp (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pageUp:")[make_pointer_from_object sender]) : unit)
   method centerSelectionInVisibleArea (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "centerSelectionInVisibleArea:")[make_pointer_from_object sender]) : unit)
   method moveBackwardAndModifySelection (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveBackwardAndModifySelection:")[make_pointer_from_object sender]) : unit)
   method moveForwardAndModifySelection (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveForwardAndModifySelection:")[make_pointer_from_object sender]) : unit)
   method moveWordForwardAndModifySelection (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveWordForwardAndModifySelection:")[make_pointer_from_object sender]) : unit)
   method moveWordBackwardAndModifySelection (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveWordBackwardAndModifySelection:")[make_pointer_from_object sender]) : unit)
   method moveUpAndModifySelection (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveUpAndModifySelection:")[make_pointer_from_object sender]) : unit)
   method moveDownAndModifySelection (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveDownAndModifySelection:")[make_pointer_from_object sender]) : unit)
   method moveWordRight (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveWordRight:")[make_pointer_from_object sender]) : unit)
   method moveWordLeft (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveWordLeft:")[make_pointer_from_object sender]) : unit)
   method moveRightAndModifySelection (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveRightAndModifySelection:")[make_pointer_from_object sender]) : unit)
   method moveLeftAndModifySelection (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveLeftAndModifySelection:")[make_pointer_from_object sender]) : unit)
   method moveWordRightAndModifySelection (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveWordRightAndModifySelection:")[make_pointer_from_object sender]) : unit)
   method moveWordLeftAndModifySelection (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "moveWordLeftAndModifySelection:")[make_pointer_from_object sender]) : unit)
   method scrollPageUp (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollPageUp:")[make_pointer_from_object sender]) : unit)
   method scrollPageDown (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollPageDown:")[make_pointer_from_object sender]) : unit)
   method scrollLineUp (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollLineUp:")[make_pointer_from_object sender]) : unit)
   method scrollLineDown (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollLineDown:")[make_pointer_from_object sender]) : unit)
   method transpose (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "transpose:")[make_pointer_from_object sender]) : unit)
   method transposeWords (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "transposeWords:")[make_pointer_from_object sender]) : unit)
   method selectAll (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectAll:")[make_pointer_from_object sender]) : unit)
   method selectParagraph (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectParagraph:")[make_pointer_from_object sender]) : unit)
   method selectLine (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectLine:")[make_pointer_from_object sender]) : unit)
   method selectWord (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectWord:")[make_pointer_from_object sender]) : unit)
   method indent (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "indent:")[make_pointer_from_object sender]) : unit)
   method insertTab (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "insertTab:")[make_pointer_from_object sender]) : unit)
   method insertBacktab (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "insertBacktab:")[make_pointer_from_object sender]) : unit)
   method insertNewline (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "insertNewline:")[make_pointer_from_object sender]) : unit)
   method insertParagraphSeparator (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "insertParagraphSeparator:")[make_pointer_from_object sender]) : unit)
   method insertNewlineIgnoringFieldEditor (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "insertNewlineIgnoringFieldEditor:")[make_pointer_from_object sender]) : unit)
   method insertTabIgnoringFieldEditor (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "insertTabIgnoringFieldEditor:")[make_pointer_from_object sender]) : unit)
   method insertLineBreak (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "insertLineBreak:")[make_pointer_from_object sender]) : unit)
   method insertContainerBreak (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "insertContainerBreak:")[make_pointer_from_object sender]) : unit)
   method changeCaseOfLetter (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "changeCaseOfLetter:")[make_pointer_from_object sender]) : unit)
   method uppercaseWord (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "uppercaseWord:")[make_pointer_from_object sender]) : unit)
   method lowercaseWord (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "lowercaseWord:")[make_pointer_from_object sender]) : unit)
   method capitalizeWord (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "capitalizeWord:")[make_pointer_from_object sender]) : unit)
   method deleteForward (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deleteForward:")[make_pointer_from_object sender]) : unit)
   method deleteBackward (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deleteBackward:")[make_pointer_from_object sender]) : unit)
   method deleteBackwardByDecomposingPreviousCharacter (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deleteBackwardByDecomposingPreviousCharacter:")[make_pointer_from_object sender]) : unit)
   method deleteWordForward (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deleteWordForward:")[make_pointer_from_object sender]) : unit)
   method deleteWordBackward (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deleteWordBackward:")[make_pointer_from_object sender]) : unit)
   method deleteToBeginningOfLine (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deleteToBeginningOfLine:")[make_pointer_from_object sender]) : unit)
   method deleteToEndOfLine (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deleteToEndOfLine:")[make_pointer_from_object sender]) : unit)
   method deleteToBeginningOfParagraph (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deleteToBeginningOfParagraph:")[make_pointer_from_object sender]) : unit)
   method deleteToEndOfParagraph (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deleteToEndOfParagraph:")[make_pointer_from_object sender]) : unit)
   method yank (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "yank:")[make_pointer_from_object sender]) : unit)
   method complete (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "complete:")[make_pointer_from_object sender]) : unit)
   method setMark (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMark:")[make_pointer_from_object sender]) : unit)
   method deleteToMark (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deleteToMark:")[make_pointer_from_object sender]) : unit)
   method selectToMark (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectToMark:")[make_pointer_from_object sender]) : unit)
   method swapWithMark (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "swapWithMark:")[make_pointer_from_object sender]) : unit)
   method cancelOperation (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "cancelOperation:")[make_pointer_from_object sender]) : unit)
(* methods for category NSKeyboardUI *)
   method performMnemonic (theString : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "performMnemonic:")[make_pointer_from_object theString]) : bool)
   method nextResponder =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "nextResponder:")[]) : [`NSResponder] Objc.nativeNSObject)
   method setNextResponder (aResponder : [`NSResponder] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNextResponder:")[make_pointer_from_object aResponder]) : unit)
   method tryToPerform  ~l_with:(anObject : [`NSObject] Objc.t ) (anAction : selector) =
     let sel, args = (
       Objc.arg anAction "tryToPerform" make_selector
       ++ Objc.arg anObject "l_with" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method performKeyEquivalent (theEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "performKeyEquivalent:")[make_pointer_from_object theEvent]) : bool)
   method validRequestorForSendType  ~returnType:(returnType : [`NSString] Objc.t ) (sendType : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg sendType "validRequestorForSendType" make_pointer_from_object
       ++ Objc.arg returnType "returnType" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method mouseDown (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "mouseDown:")[make_pointer_from_object theEvent]) : unit)
   method rightMouseDown (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "rightMouseDown:")[make_pointer_from_object theEvent]) : unit)
   method otherMouseDown (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "otherMouseDown:")[make_pointer_from_object theEvent]) : unit)
   method mouseUp (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "mouseUp:")[make_pointer_from_object theEvent]) : unit)
   method rightMouseUp (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "rightMouseUp:")[make_pointer_from_object theEvent]) : unit)
   method otherMouseUp (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "otherMouseUp:")[make_pointer_from_object theEvent]) : unit)
   method mouseMoved (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "mouseMoved:")[make_pointer_from_object theEvent]) : unit)
   method mouseDragged (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "mouseDragged:")[make_pointer_from_object theEvent]) : unit)
   method scrollWheel (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollWheel:")[make_pointer_from_object theEvent]) : unit)
   method rightMouseDragged (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "rightMouseDragged:")[make_pointer_from_object theEvent]) : unit)
   method otherMouseDragged (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "otherMouseDragged:")[make_pointer_from_object theEvent]) : unit)
   method mouseEntered (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "mouseEntered:")[make_pointer_from_object theEvent]) : unit)
   method mouseExited (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "mouseExited:")[make_pointer_from_object theEvent]) : unit)
   method keyDown (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "keyDown:")[make_pointer_from_object theEvent]) : unit)
   method keyUp (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "keyUp:")[make_pointer_from_object theEvent]) : unit)
   method flagsChanged (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "flagsChanged:")[make_pointer_from_object theEvent]) : unit)
   method tabletPoint (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "tabletPoint:")[make_pointer_from_object theEvent]) : unit)
   method tabletProximity (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "tabletProximity:")[make_pointer_from_object theEvent]) : unit)
   method noResponderFor (eventSelector : selector) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "noResponderFor:")[make_selector eventSelector]) : unit)
   method acceptsFirstResponder =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "acceptsFirstResponder:")[]) : bool)
   method becomeFirstResponder =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "becomeFirstResponder:")[]) : bool)
   method resignFirstResponder =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "resignFirstResponder:")[]) : bool)
   method interpretKeyEvents (eventArray : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "interpretKeyEvents:")[make_pointer_from_object eventArray]) : unit)
   method flushBufferedKeyEvents =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "flushBufferedKeyEvents:")[]) : unit)
   method setMenu (menu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMenu:")[make_pointer_from_object menu]) : unit)
   method menu =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "menu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method showContextHelp (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "showContextHelp:")[make_pointer_from_object sender]) : unit)
   method helpRequested (eventPtr : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "helpRequested:")[make_pointer_from_object eventPtr]) : unit)
   method shouldBeTreatedAsInkEvent (theEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "shouldBeTreatedAsInkEvent:")[make_pointer_from_object theEvent]) : bool)
end
