(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSParagraphStyle] id) -> object
  inherit Im_NSParagraphStyle.methods
  method repr = r
end

(* Class object for NSParagraphStyle *)
let c = Classes.find "NSParagraphStyle"
let _new()= (Objc.objcnew c : [`NSParagraphStyle] id)
let alloc() = (Objc.objcalloc c : [`NSParagraphStyle] id)
let defaultParagraphStyle () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultParagraphStyle")[])
       : [`NSParagraphStyle] Objc.id))
(*  UNSUPPORTED
let defaultWritingDirectionForLanguage (languageName : [`NSString] Objc.t) =
    ((*NSWritingDirection*) unsupported (Objc.invoke (*NSWritingDirection*) Objc.tag_unsupported c (Selector.find "defaultWritingDirectionForLanguage:")
      [make_pointer_from_object languageName]) : (*NSWritingDirection*) unsupported)

*)
