(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSSharing of NSTextView *)
class virtual methods_NSTextView = object (self)
  method virtual repr : [`NSTextView] Objc.id
  method selectedRanges =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedRanges")[])
       : [`NSArray] Objc.id))
  method setSelectedRanges  ?affinity:(affinity : int option) ?stillSelecting:(stillSelectingFlag : bool option) (ranges : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg ranges "setSelectedRanges" make_pointer_from_object
      ++ Objc.opt_arg affinity "affinity" make_int
      ++ Objc.opt_arg stillSelectingFlag "stillSelecting" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  (* skipping selector setSelectedRanges *)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method setSelectedRange  ?affinity:(affinity : int option) ?stillSelecting:(stillSelectingFlag : bool option) (charRange : int * int) =
    let sel, args = (
      Objc.arg charRange "setSelectedRange" make_range
      ++ Objc.opt_arg affinity "affinity" make_int
      ++ Objc.opt_arg stillSelectingFlag "stillSelecting" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method selectionAffinity =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "selectionAffinity")[])
       : int)
  method selectionGranularity =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "selectionGranularity")[])
       : int)
  method setSelectionGranularity (granularity : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSelectionGranularity:")
      [make_int granularity]) : unit)
  method setSelectedTextAttributes (attributeDictionary : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSelectedTextAttributes:")
      [make_pointer_from_object attributeDictionary]) : unit)
  method selectedTextAttributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedTextAttributes")[])
       : [`NSDictionary] Objc.id))
  method setInsertionPointColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setInsertionPointColor:")
      [make_pointer_from_object color]) : unit)
  method insertionPointColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "insertionPointColor")[])
       : [`NSColor] Objc.id))
  method updateInsertionPointStateAndRestartTimer (restartFlag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateInsertionPointStateAndRestartTimer:")
      [make_bool restartFlag]) : unit)
  method setMarkedTextAttributes (attributeDictionary : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMarkedTextAttributes:")
      [make_pointer_from_object attributeDictionary]) : unit)
  method markedTextAttributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "markedTextAttributes")[])
       : [`NSDictionary] Objc.id))
  method setLinkTextAttributes (attributeDictionary : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLinkTextAttributes:")
      [make_pointer_from_object attributeDictionary]) : unit)
  method linkTextAttributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "linkTextAttributes")[])
       : [`NSDictionary] Objc.id))
  method setRulerVisible (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRulerVisible:")
      [make_bool flag]) : unit)
  method usesRuler =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "usesRuler")[])
       : bool)
  method setUsesRuler (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUsesRuler:")
      [make_bool flag]) : unit)
  method setContinuousSpellCheckingEnabled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContinuousSpellCheckingEnabled:")
      [make_bool flag]) : unit)
  method isContinuousSpellCheckingEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isContinuousSpellCheckingEnabled")[])
       : bool)
  method toggleContinuousSpellChecking (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "toggleContinuousSpellChecking:")
      [make_pointer_from_object sender]) : unit)
  method spellCheckerDocumentTag =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "spellCheckerDocumentTag")[])
       : int)
  method typingAttributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "typingAttributes")[])
       : [`NSDictionary] Objc.id))
  method setTypingAttributes (attrs : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTypingAttributes:")
      [make_pointer_from_object attrs]) : unit)
  method shouldChangeTextInRanges  ~replacementStrings:(replacementStrings : [`NSArray] Objc.t ) (affectedRanges : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg affectedRanges "shouldChangeTextInRanges" make_pointer_from_object
      ++ Objc.arg replacementStrings "replacementStrings" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method rangesForUserTextChange =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "rangesForUserTextChange")[])
       : [`NSArray] Objc.id))
  method rangesForUserCharacterAttributeChange =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "rangesForUserCharacterAttributeChange")[])
       : [`NSArray] Objc.id))
  method rangesForUserParagraphAttributeChange =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "rangesForUserParagraphAttributeChange")[])
       : [`NSArray] Objc.id))
  method shouldChangeTextInRange  ~replacementString:(replacementString : [`NSString] Objc.t ) (affectedCharRange : int * int) =
    let sel, args = (
      Objc.arg affectedCharRange "shouldChangeTextInRange" make_range
      ++ Objc.arg replacementString "replacementString" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method didChangeText =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "didChangeText")[])
       : unit)
  method rangeForUserTextChange =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "rangeForUserTextChange")[])
       : (int * int))
  method rangeForUserCharacterAttributeChange =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "rangeForUserCharacterAttributeChange")[])
       : (int * int))
  method rangeForUserParagraphAttributeChange =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "rangeForUserParagraphAttributeChange")[])
       : (int * int))
  method setUsesFindPanel (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUsesFindPanel:")
      [make_bool flag]) : unit)
  method usesFindPanel =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "usesFindPanel")[])
       : bool)
  method setAllowsDocumentBackgroundColorChange (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsDocumentBackgroundColorChange:")
      [make_bool flag]) : unit)
  method allowsDocumentBackgroundColorChange =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsDocumentBackgroundColorChange")[])
       : bool)
  method setDefaultParagraphStyle (paragraphStyle : [`NSParagraphStyle] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDefaultParagraphStyle:")
      [make_pointer_from_object paragraphStyle]) : unit)
  method defaultParagraphStyle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "defaultParagraphStyle")[])
       : [`NSParagraphStyle] Objc.id))
  method breakUndoCoalescing =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "breakUndoCoalescing")[])
       : unit)
  method isSelectable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSelectable")[])
       : bool)
  method setSelectable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSelectable:")
      [make_bool flag]) : unit)
  method isEditable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEditable")[])
       : bool)
  method setEditable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEditable:")
      [make_bool flag]) : unit)
  method isRichText =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isRichText")[])
       : bool)
  method setRichText (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRichText:")
      [make_bool flag]) : unit)
  method importsGraphics =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "importsGraphics")[])
       : bool)
  method setImportsGraphics (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImportsGraphics:")
      [make_bool flag]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method isFieldEditor =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFieldEditor")[])
       : bool)
  method setFieldEditor (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFieldEditor:")
      [make_bool flag]) : unit)
  method usesFontPanel =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "usesFontPanel")[])
       : bool)
  method setUsesFontPanel (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUsesFontPanel:")
      [make_bool flag]) : unit)
  method isRulerVisible =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isRulerVisible")[])
       : bool)
  method setBackgroundColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBackgroundColor:")
      [make_pointer_from_object color]) : unit)
  method backgroundColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "backgroundColor")[])
       : [`NSColor] Objc.id))
  method setDrawsBackground (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDrawsBackground:")
      [make_bool flag]) : unit)
  method drawsBackground =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "drawsBackground")[])
       : bool)
  (* skipping selector setSelectedRange *)
  method allowsUndo =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsUndo")[])
       : bool)
  method setAllowsUndo (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsUndo:")
      [make_bool flag]) : unit)
  method resignFirstResponder =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "resignFirstResponder")[])
       : bool)
  method becomeFirstResponder =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "becomeFirstResponder")[])
       : bool)
  method smartInsertDeleteEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "smartInsertDeleteEnabled")[])
       : bool)
  method setSmartInsertDeleteEnabled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSmartInsertDeleteEnabled:")
      [make_bool flag]) : unit)
  method smartDeleteRangeForProposedRange (proposedCharRange : int * int) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "smartDeleteRangeForProposedRange:")
      [make_range proposedCharRange]) : (int * int))
(*  UNSUPPORTED
  method smartInsertForString  ~replacingRange:(charRangeToReplace : (int * int) ) ~beforeString:(beforeString : (*pointer to pointer to NSString*) unsupported ) ~afterString:(afterString : (*pointer to pointer to NSString*) unsupported ) (pasteString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg pasteString "smartInsertForString" make_pointer_from_object
      ++ Objc.arg charRangeToReplace "replacingRange" make_range
      ++ Objc.arg beforeString "beforeString" (*pointer to pointer to NSString*) unsupported
      ++ Objc.arg afterString "afterString" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method smartInsertBeforeStringForString  ~replacingRange:(charRangeToReplace : (int * int) ) (pasteString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg pasteString "smartInsertBeforeStringForString" make_pointer_from_object
      ++ Objc.arg charRangeToReplace "replacingRange" make_range
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method smartInsertAfterStringForString  ~replacingRange:(charRangeToReplace : (int * int) ) (pasteString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg pasteString "smartInsertAfterStringForString" make_pointer_from_object
      ++ Objc.arg charRangeToReplace "replacingRange" make_range
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
end
