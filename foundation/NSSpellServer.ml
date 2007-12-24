(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSRange


external init : unit -> unit = "caml_init_NSSpellServer"
let _ = init()
let make_NSObject_of_NSSpellServer (o : [`NSSpellServer] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSSpellServer *)
let class_NSSpellServer = object
   val repr = Classes.find "NSSpellServer"
   method _new = (Objc.objcnew repr : [`NSSpellServer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSpellServer] nativeNSObject)
end
(* Encapsulation for native instance of NSSpellServer *)
class native_NSSpellServer = fun (o : [`NSSpellServer] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSSpellServer o) as super
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method registerLanguage  ~byVendor:(vendor : [`NSString] Objc.t ) (language : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg language "registerLanguage" make_pointer_from_object
       ++ Objc.arg vendor "byVendor" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method isWordInUserDictionaries  ~caseSensitive:(flag : bool ) (word : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg word "isWordInUserDictionaries" make_pointer_from_object
       ++ Objc.arg flag "caseSensitive" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method run =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "run:")[]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSSpellServerDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSSpellServerDelegate *)
   method spellServer  ?findMisspelledWordInString:(stringToCheck : [`NSString] Objc.t option) ?language:(language : [`NSString] Objc.t option) ?wordCount:(wordCount : [`int] Objc.t option) ?countOnly:(countOnly : bool option) (sender : [`NSSpellServer] Objc.t) =
     let sel, args = (
       Objc.arg sender "spellServer" make_pointer_from_object
       ++ Objc.opt_arg stringToCheck "findMisspelledWordInString" make_pointer_from_object
       ++ Objc.opt_arg language "language" make_pointer_from_object
       ++ Objc.opt_arg wordCount "wordCount" make_pointer_from_object
       ++ Objc.opt_arg countOnly "countOnly" make_bool
     ) ([],[]) in
       (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find_list sel) args) : (int * int))
   (* skipping selector spellServer:suggestGuessesForWord:inLanguage *)
   (* skipping selector spellServer:didLearnWord:inLanguage *)
   (* skipping selector spellServer:didForgetWord:inLanguage *)
   (* skipping selector spellServer:suggestCompletionsForPartialWordRange:inString:language *)
end
