open Objc
open NSObject
open NSRange


external init : unit -> unit = "caml_init_NSSpellChecker"
let _ = init()
(* Class object for NSSpellChecker *)
let class_NSSpellChecker = object
   val o = Classes.find "NSSpellChecker"
   method _new = (Objc.objcnew o : [`NSSpellChecker] nativeNSObject)
   method sharedSpellChecker =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedSpellChecker:")[]) : [`NSSpellChecker] Objc.nativeNSObject)
   method sharedSpellCheckerExists =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedSpellCheckerExists:")[]) : [`NSSpellChecker] Objc.nativeNSObject)
   method uniqueSpellDocumentTag =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "uniqueSpellDocumentTag:")[]) : [`NSSpellChecker] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSSpellChecker *)
class native_NSSpellChecker = fun (o : [`NSSpellChecker] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method checkSpellingOfString  ~startingAt:(startingOffset : int ) ?language:(language : [`NSString] Objc.t option) ?wrap:(wrapFlag : bool option) ?inSpellDocumentWithTag:(tag : int option) ?wordCount:(wordCount : [`int] Objc.t option) (stringToCheck : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg stringToCheck "checkSpellingOfString" make_pointer_from_object
       ++ Objc.arg startingOffset "startingAt" make_int
       ++ Objc.opt_arg language "language" make_pointer_from_object
       ++ Objc.opt_arg wrapFlag "wrap" make_bool
       ++ Objc.opt_arg tag "inSpellDocumentWithTag" make_int
       ++ Objc.opt_arg wordCount "wordCount" make_pointer_from_object
     ) ([],[]) in
       (get_range (Objc.invoke Objc.tag_nsrange o (Selector.find_list sel) args) : (int * int))
   (* skipping selector checkSpellingOfString:startingAt *)
   method countWordsInString  ~language:(language : [`NSString] Objc.t ) (stringToCount : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg stringToCount "countWordsInString" make_pointer_from_object
       ++ Objc.arg language "language" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int o (Selector.find_list sel) args) : int)
   method updateSpellingPanelWithMisspelledWord (word : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "updateSpellingPanelWithMisspelledWord:")[make_pointer_from_object word]) : unit)
   method spellingPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "spellingPanel:")[]) : [`NSPanel] Objc.nativeNSObject)
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)
   method setAccessoryView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAccessoryView:")[make_pointer_from_object aView]) : unit)
   method ignoreWord  ~inSpellDocumentWithTag:(tag : int ) (wordToIgnore : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg wordToIgnore "ignoreWord" make_pointer_from_object
       ++ Objc.arg tag "inSpellDocumentWithTag" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method ignoredWordsInSpellDocumentWithTag (tag : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "ignoredWordsInSpellDocumentWithTag:")[make_int tag]) : [`NSArray] Objc.nativeNSObject)
   method setIgnoredWords  ~inSpellDocumentWithTag:(tag : int ) (words : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg words "setIgnoredWords" make_pointer_from_object
       ++ Objc.arg tag "inSpellDocumentWithTag" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method guessesForWord (word : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "guessesForWord:")[make_pointer_from_object word]) : [`NSArray] Objc.nativeNSObject)
   method completionsForPartialWordRange  ~inString:(string : [`NSString] Objc.t ) ~language:(language : [`NSString] Objc.t ) ~inSpellDocumentWithTag:(tag : int ) (range : int * int) =
     let sel, args = (
       Objc.arg range "completionsForPartialWordRange" make_range
       ++ Objc.arg string "inString" make_pointer_from_object
       ++ Objc.arg language "language" make_pointer_from_object
       ++ Objc.arg tag "inSpellDocumentWithTag" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSArray] Objc.nativeNSObject)
   method closeSpellDocumentWithTag (tag : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "closeSpellDocumentWithTag:")[make_int tag]) : unit)
   method language =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "language:")[]) : [`NSString] Objc.nativeNSObject)
   method setLanguage (language : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "setLanguage:")[make_pointer_from_object language]) : bool)
   method setWordFieldStringValue (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setWordFieldStringValue:")[make_pointer_from_object aString]) : unit)
end
