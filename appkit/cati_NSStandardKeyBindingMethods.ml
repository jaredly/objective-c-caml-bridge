(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSStandardKeyBindingMethods of NSResponder *)
class virtual methods_NSResponder = object (self)
  method virtual repr : [`NSResponder] Objc.id
  method insertText (insertString : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertText:")
      [make_pointer_from_object insertString]) : unit)
  method doCommandBySelector (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "doCommandBySelector:")
      [make_selector aSelector]) : unit)
  method moveForward (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveForward:")
      [make_pointer_from_object sender]) : unit)
  method moveRight (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveRight:")
      [make_pointer_from_object sender]) : unit)
  method moveBackward (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveBackward:")
      [make_pointer_from_object sender]) : unit)
  method moveLeft (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveLeft:")
      [make_pointer_from_object sender]) : unit)
  method moveUp (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveUp:")
      [make_pointer_from_object sender]) : unit)
  method moveDown (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveDown:")
      [make_pointer_from_object sender]) : unit)
  method moveWordForward (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveWordForward:")
      [make_pointer_from_object sender]) : unit)
  method moveWordBackward (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveWordBackward:")
      [make_pointer_from_object sender]) : unit)
  method moveToBeginningOfLine (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveToBeginningOfLine:")
      [make_pointer_from_object sender]) : unit)
  method moveToEndOfLine (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveToEndOfLine:")
      [make_pointer_from_object sender]) : unit)
  method moveToBeginningOfParagraph (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveToBeginningOfParagraph:")
      [make_pointer_from_object sender]) : unit)
  method moveToEndOfParagraph (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveToEndOfParagraph:")
      [make_pointer_from_object sender]) : unit)
  method moveToEndOfDocument (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveToEndOfDocument:")
      [make_pointer_from_object sender]) : unit)
  method moveToBeginningOfDocument (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveToBeginningOfDocument:")
      [make_pointer_from_object sender]) : unit)
  method pageDown (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "pageDown:")
      [make_pointer_from_object sender]) : unit)
  method pageUp (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "pageUp:")
      [make_pointer_from_object sender]) : unit)
  method centerSelectionInVisibleArea (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "centerSelectionInVisibleArea:")
      [make_pointer_from_object sender]) : unit)
  method moveBackwardAndModifySelection (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveBackwardAndModifySelection:")
      [make_pointer_from_object sender]) : unit)
  method moveForwardAndModifySelection (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveForwardAndModifySelection:")
      [make_pointer_from_object sender]) : unit)
  method moveWordForwardAndModifySelection (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveWordForwardAndModifySelection:")
      [make_pointer_from_object sender]) : unit)
  method moveWordBackwardAndModifySelection (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveWordBackwardAndModifySelection:")
      [make_pointer_from_object sender]) : unit)
  method moveUpAndModifySelection (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveUpAndModifySelection:")
      [make_pointer_from_object sender]) : unit)
  method moveDownAndModifySelection (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveDownAndModifySelection:")
      [make_pointer_from_object sender]) : unit)
  method moveWordRight (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveWordRight:")
      [make_pointer_from_object sender]) : unit)
  method moveWordLeft (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveWordLeft:")
      [make_pointer_from_object sender]) : unit)
  method moveRightAndModifySelection (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveRightAndModifySelection:")
      [make_pointer_from_object sender]) : unit)
  method moveLeftAndModifySelection (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveLeftAndModifySelection:")
      [make_pointer_from_object sender]) : unit)
  method moveWordRightAndModifySelection (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveWordRightAndModifySelection:")
      [make_pointer_from_object sender]) : unit)
  method moveWordLeftAndModifySelection (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "moveWordLeftAndModifySelection:")
      [make_pointer_from_object sender]) : unit)
  method scrollPageUp (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollPageUp:")
      [make_pointer_from_object sender]) : unit)
  method scrollPageDown (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollPageDown:")
      [make_pointer_from_object sender]) : unit)
  method scrollLineUp (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollLineUp:")
      [make_pointer_from_object sender]) : unit)
  method scrollLineDown (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollLineDown:")
      [make_pointer_from_object sender]) : unit)
  method transpose (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "transpose:")
      [make_pointer_from_object sender]) : unit)
  method transposeWords (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "transposeWords:")
      [make_pointer_from_object sender]) : unit)
  method selectAll (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectAll:")
      [make_pointer_from_object sender]) : unit)
  method selectParagraph (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectParagraph:")
      [make_pointer_from_object sender]) : unit)
  method selectLine (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectLine:")
      [make_pointer_from_object sender]) : unit)
  method selectWord (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectWord:")
      [make_pointer_from_object sender]) : unit)
  method indent (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "indent:")
      [make_pointer_from_object sender]) : unit)
  method insertTab (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertTab:")
      [make_pointer_from_object sender]) : unit)
  method insertBacktab (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertBacktab:")
      [make_pointer_from_object sender]) : unit)
  method insertNewline (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertNewline:")
      [make_pointer_from_object sender]) : unit)
  method insertParagraphSeparator (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertParagraphSeparator:")
      [make_pointer_from_object sender]) : unit)
  method insertNewlineIgnoringFieldEditor (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertNewlineIgnoringFieldEditor:")
      [make_pointer_from_object sender]) : unit)
  method insertTabIgnoringFieldEditor (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertTabIgnoringFieldEditor:")
      [make_pointer_from_object sender]) : unit)
  method insertLineBreak (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertLineBreak:")
      [make_pointer_from_object sender]) : unit)
  method insertContainerBreak (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertContainerBreak:")
      [make_pointer_from_object sender]) : unit)
  method changeCaseOfLetter (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "changeCaseOfLetter:")
      [make_pointer_from_object sender]) : unit)
  method uppercaseWord (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "uppercaseWord:")
      [make_pointer_from_object sender]) : unit)
  method lowercaseWord (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "lowercaseWord:")
      [make_pointer_from_object sender]) : unit)
  method capitalizeWord (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "capitalizeWord:")
      [make_pointer_from_object sender]) : unit)
  method deleteForward (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteForward:")
      [make_pointer_from_object sender]) : unit)
  method deleteBackward (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteBackward:")
      [make_pointer_from_object sender]) : unit)
  method deleteBackwardByDecomposingPreviousCharacter (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteBackwardByDecomposingPreviousCharacter:")
      [make_pointer_from_object sender]) : unit)
  method deleteWordForward (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteWordForward:")
      [make_pointer_from_object sender]) : unit)
  method deleteWordBackward (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteWordBackward:")
      [make_pointer_from_object sender]) : unit)
  method deleteToBeginningOfLine (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteToBeginningOfLine:")
      [make_pointer_from_object sender]) : unit)
  method deleteToEndOfLine (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteToEndOfLine:")
      [make_pointer_from_object sender]) : unit)
  method deleteToBeginningOfParagraph (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteToBeginningOfParagraph:")
      [make_pointer_from_object sender]) : unit)
  method deleteToEndOfParagraph (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteToEndOfParagraph:")
      [make_pointer_from_object sender]) : unit)
  method yank (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "yank:")
      [make_pointer_from_object sender]) : unit)
  method complete (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "complete:")
      [make_pointer_from_object sender]) : unit)
  method setMark (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMark:")
      [make_pointer_from_object sender]) : unit)
  method deleteToMark (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteToMark:")
      [make_pointer_from_object sender]) : unit)
  method selectToMark (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectToMark:")
      [make_pointer_from_object sender]) : unit)
  method swapWithMark (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "swapWithMark:")
      [make_pointer_from_object sender]) : unit)
  method cancelOperation (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "cancelOperation:")
      [make_pointer_from_object sender]) : unit)
end
