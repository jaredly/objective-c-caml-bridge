(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSpellChecker] id) -> object
  inherit Im_NSSpellChecker.methods
  method repr = r
end

(* Class object for NSSpellChecker *)
let c = Classes.find "NSSpellChecker"
let _new()= (Objc.objcnew c : [`NSSpellChecker] id)
let alloc() = (Objc.objcalloc c : [`NSSpellChecker] id)
let sharedSpellChecker () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedSpellChecker")[])
       : [`NSSpellChecker] Objc.id))
let sharedSpellCheckerExists () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "sharedSpellCheckerExists")[])
       : bool)
let uniqueSpellDocumentTag () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "uniqueSpellDocumentTag")[])
       : int)
