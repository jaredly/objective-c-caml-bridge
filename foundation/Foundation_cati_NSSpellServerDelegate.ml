(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSSpellServerDelegate of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method spellServer_findMisspelledWordInString_language_wordCount_countOnly  (sender : [`NSSpellServer] Objc.t) (stringToCheck : [`NSString] Objc.t) (language : [`NSString] Objc.t) (wordCount : [`int] Objc.t) (countOnly : bool) =
    let sel, args = (
      Objc.arg sender "spellServer" make_pointer_from_object
      ++ Objc.arg stringToCheck "findMisspelledWordInString" make_pointer_from_object
      ++ Objc.arg language "language" make_pointer_from_object
      ++ Objc.arg wordCount "wordCount" make_pointer_from_object
      ++ Objc.arg countOnly "countOnly" make_bool
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : NSRange.t)
  method spellServer_suggestGuessesForWord_inLanguage  (sender : [`NSSpellServer] Objc.t) (word : [`NSString] Objc.t) (language : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg sender "spellServer" make_pointer_from_object
      ++ Objc.arg word "suggestGuessesForWord" make_pointer_from_object
      ++ Objc.arg language "inLanguage" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
  method spellServer_didLearnWord_inLanguage  (sender : [`NSSpellServer] Objc.t) (word : [`NSString] Objc.t) (language : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg sender "spellServer" make_pointer_from_object
      ++ Objc.arg word "didLearnWord" make_pointer_from_object
      ++ Objc.arg language "inLanguage" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method spellServer_didForgetWord_inLanguage  (sender : [`NSSpellServer] Objc.t) (word : [`NSString] Objc.t) (language : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg sender "spellServer" make_pointer_from_object
      ++ Objc.arg word "didForgetWord" make_pointer_from_object
      ++ Objc.arg language "inLanguage" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method spellServer_suggestCompletionsForPartialWordRange_inString_language  (sender : [`NSSpellServer] Objc.t) (range : NSRange.t) (string : [`NSString] Objc.t) (language : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg sender "spellServer" make_pointer_from_object
      ++ Objc.arg range "suggestCompletionsForPartialWordRange" make_range
      ++ Objc.arg string "inString" make_pointer_from_object
      ++ Objc.arg language "language" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
end
