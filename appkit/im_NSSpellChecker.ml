(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSpellChecker *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method checkSpellingOfString_startingAt_language_wrap_inSpellDocumentWithTag_wordCount  (stringToCheck : [`NSString] Objc.t) (startingOffset : int) (language : [`NSString] Objc.t) (wrapFlag : bool) (tag : int) (wordCount : [`int] Objc.t) =
    let sel, args = (
      Objc.arg stringToCheck "checkSpellingOfString" make_pointer_from_object
      ++ Objc.arg startingOffset "startingAt" make_int
      ++ Objc.arg language "language" make_pointer_from_object
      ++ Objc.arg wrapFlag "wrap" make_bool
      ++ Objc.arg tag "inSpellDocumentWithTag" make_int
      ++ Objc.arg wordCount "wordCount" make_pointer_from_object
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : NSRange.t)
  method checkSpellingOfString_startingAt  (stringToCheck : [`NSString] Objc.t) (startingOffset : int) =
    let sel, args = (
      Objc.arg stringToCheck "checkSpellingOfString" make_pointer_from_object
      ++ Objc.arg startingOffset "startingAt" make_int
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : NSRange.t)
  method countWordsInString_language  (stringToCount : [`NSString] Objc.t) (language : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg stringToCount "countWordsInString" make_pointer_from_object
      ++ Objc.arg language "language" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method updateSpellingPanelWithMisspelledWord (word : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateSpellingPanelWithMisspelledWord:")
      [make_pointer_from_object word]) : unit)
  method spellingPanel =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "spellingPanel")[])
       : [`NSPanel] Objc.id))
  method accessoryView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "accessoryView")[])
       : [`NSView] Objc.id))
  method setAccessoryView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAccessoryView:")
      [make_pointer_from_object aView]) : unit)
  method ignoreWord_inSpellDocumentWithTag  (wordToIgnore : [`NSString] Objc.t) (tag : int) =
    let sel, args = (
      Objc.arg wordToIgnore "ignoreWord" make_pointer_from_object
      ++ Objc.arg tag "inSpellDocumentWithTag" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method ignoredWordsInSpellDocumentWithTag (tag : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "ignoredWordsInSpellDocumentWithTag:")
      [make_int tag]) : [`NSArray] Objc.id))
  method setIgnoredWords_inSpellDocumentWithTag  (words : [`NSArray] Objc.t) (tag : int) =
    let sel, args = (
      Objc.arg words "setIgnoredWords" make_pointer_from_object
      ++ Objc.arg tag "inSpellDocumentWithTag" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method guessesForWord (word : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "guessesForWord:")
      [make_pointer_from_object word]) : [`NSArray] Objc.id))
  method completionsForPartialWordRange_inString_language_inSpellDocumentWithTag  (range : NSRange.t) (string : [`NSString] Objc.t) (language : [`NSString] Objc.t) (tag : int) =
    let sel, args = (
      Objc.arg range "completionsForPartialWordRange" make_range
      ++ Objc.arg string "inString" make_pointer_from_object
      ++ Objc.arg language "language" make_pointer_from_object
      ++ Objc.arg tag "inSpellDocumentWithTag" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
  method closeSpellDocumentWithTag (tag : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "closeSpellDocumentWithTag:")
      [make_int tag]) : unit)
  method language =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "language")[])
       : [`NSString] Objc.id))
  method setLanguage (language : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "setLanguage:")
      [make_pointer_from_object language]) : bool)
  method setWordFieldStringValue (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWordFieldStringValue:")
      [make_pointer_from_object aString]) : unit)
end
