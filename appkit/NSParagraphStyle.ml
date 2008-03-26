(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSParagraphStyle.methods
end

class t = fun (r :[`NSParagraphStyle] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSParagraphStyle *)
let c = Classes.find "NSParagraphStyle"
let _new()= (Objc.objcnew c : [`NSParagraphStyle] id)
let alloc() = (Objc.objcalloc c : [`NSParagraphStyle] id)
let defaultParagraphStyle () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultParagraphStyle")[])
       : [`NSParagraphStyle] Objc.id))
let defaultWritingDirectionForLanguage (languageName : [`NSString] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "defaultWritingDirectionForLanguage:")
      [make_pointer_from_object languageName]) : int)
