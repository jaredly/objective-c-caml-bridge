(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSpellChecker.methods
end

class t = fun (r :[`NSSpellChecker] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
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
