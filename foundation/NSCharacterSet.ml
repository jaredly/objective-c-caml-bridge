(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSOpenStepUnicodeReservedBase = 62464L


class virtual methods = object
  inherit Im_NSCharacterSet.methods
end

class t = fun (r :[`NSCharacterSet] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCharacterSet *)
let c = Classes.find "NSCharacterSet"
let _new()= (Objc.objcnew c : [`NSCharacterSet] id)
let alloc() = (Objc.objcalloc c : [`NSCharacterSet] id)
let controlCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "controlCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let whitespaceCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "whitespaceCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let whitespaceAndNewlineCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "whitespaceAndNewlineCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let decimalDigitCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "decimalDigitCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let letterCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "letterCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let lowercaseLetterCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "lowercaseLetterCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let uppercaseLetterCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "uppercaseLetterCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let nonBaseCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "nonBaseCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let alphanumericCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "alphanumericCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let decomposableCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "decomposableCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let illegalCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "illegalCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let punctuationCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "punctuationCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let capitalizedLetterCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "capitalizedLetterCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let symbolCharacterSet () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "symbolCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
let characterSetWithRange (aRange : NSRange.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "characterSetWithRange:")
      [make_range aRange]) : [`NSCharacterSet] Objc.id))
let characterSetWithCharactersInString (aString : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "characterSetWithCharactersInString:")
      [make_pointer_from_object aString]) : [`NSCharacterSet] Objc.id))
let characterSetWithBitmapRepresentation (data : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "characterSetWithBitmapRepresentation:")
      [make_pointer_from_object data]) : [`NSCharacterSet] Objc.id))
let characterSetWithContentsOfFile (fName : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "characterSetWithContentsOfFile:")
      [make_pointer_from_object fName]) : [`NSCharacterSet] Objc.id))
