(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSCaseInsensitiveSearch = 1L
let _NSLiteralSearch = 2L
let _NSBackwardsSearch = 4L
let _NSAnchoredSearch = 8L
let _NSNumericSearch = 64L
let _NSASCIIStringEncoding = 1L
let _NSNEXTSTEPStringEncoding = 2L
let _NSJapaneseEUCStringEncoding = 3L
let _NSUTF8StringEncoding = 4L
let _NSISOLatin1StringEncoding = 5L
let _NSSymbolStringEncoding = 6L
let _NSNonLossyASCIIStringEncoding = 7L
let _NSShiftJISStringEncoding = 8L
let _NSISOLatin2StringEncoding = 9L
let _NSUnicodeStringEncoding = 10L
let _NSWindowsCP1251StringEncoding = 11L
let _NSWindowsCP1252StringEncoding = 12L
let _NSWindowsCP1253StringEncoding = 13L
let _NSWindowsCP1254StringEncoding = 14L
let _NSWindowsCP1250StringEncoding = 15L
let _NSISO2022JPStringEncoding = 21L
let _NSMacOSRomanStringEncoding = 30L
let _NSProprietaryStringEncoding = 65536L


class virtual methods = object
  inherit Foundation_cati_NSURLUtilities.methods_NSString
  inherit Foundation_cati_NSStringDeprecated.methods_NSString
  inherit Foundation_cati_NSExtendedStringPropertyListParsing.methods_NSString
  inherit Foundation_cati_NSStringExtensionMethods.methods_NSString
  inherit Im_NSString.methods
  inherit Foundation_cati_NSStringPathExtensions.methods_NSString
end

class t = fun (r :[`NSString] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSString *)
let c = Classes.find "NSString"
let _new()= (Objc.objcnew c : [`NSString] id)
let alloc() = (Objc.objcalloc c : [`NSString] id)
(* class methods for category NSURLUtilities of NSString *)
(* class methods for category NSStringDeprecated of NSString *)
let stringWithContentsOfFile (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "stringWithContentsOfFile:")
      [make_pointer_from_object path]) : [`NSString] Objc.id))
let stringWithContentsOfURL (url : [`NSURL] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "stringWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSString] Objc.id))
let stringWithCString_length  (bytes : string) (length : int) =
    let sel, args = (
      Objc.arg bytes "stringWithCString" make_string
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))
let stringWithCString (bytes : string) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "stringWithCString:")
      [make_string bytes]) : [`NSString] Objc.id))
(* class methods for category NSExtendedStringPropertyListParsing of NSString *)
(* class methods for category NSStringExtensionMethods of NSString *)
let defaultCStringEncoding () =
    (get_int64 (Objc.invoke Objc.tag_int64 c (Selector.find "defaultCStringEncoding")[])
       : int64)
(*  UNSUPPORTED
let availableStringEncodings () =
    ((*pointer to const NSStringEncoding*) unsupported (Objc.invoke (*pointer to const NSStringEncoding*) Objc.tag_unsupported c (Selector.find "availableStringEncodings")[])
       : (*pointer to const NSStringEncoding*) unsupported)

*)
let localizedNameOfStringEncoding (encoding : int64) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "localizedNameOfStringEncoding:")
      [make_int64 encoding]) : [`NSString] Objc.id))
let string () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "string")[])
       : [`NSString] Objc.id))
let stringWithString (string : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "stringWithString:")
      [make_pointer_from_object string]) : [`NSString] Objc.id))
(*  UNSUPPORTED
let stringWithCharacters_length  (characters : (*pointer to const unichar*) unsupported) (length : int) =
    let sel, args = (
      Objc.arg characters "stringWithCharacters" (*pointer to const unichar*) unsupported
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))

*)
let stringWithUTF8String (nullTerminatedCString : string) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "stringWithUTF8String:")
      [make_string nullTerminatedCString]) : [`NSString] Objc.id))
let stringWithCString_encoding  (cString : string) (enc : int64) =
    let sel, args = (
      Objc.arg cString "stringWithCString" make_string
      ++ Objc.arg enc "encoding" make_int64
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))
let stringWithContentsOfURL_encoding_error  (url : [`NSURL] Objc.t) (enc : int64) (error : bool) =
    let sel, args = (
      Objc.arg url "stringWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg enc "encoding" make_int64
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))
let stringWithContentsOfFile_encoding_error  (path : [`NSString] Objc.t) (enc : int64) (error : bool) =
    let sel, args = (
      Objc.arg path "stringWithContentsOfFile" make_pointer_from_object
      ++ Objc.arg enc "encoding" make_int64
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))
let stringWithContentsOfURL_usedEncoding_error  (url : [`NSURL] Objc.t) (enc : [`NSStringEncoding] Objc.t) (error : bool) =
    let sel, args = (
      Objc.arg url "stringWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg enc "usedEncoding" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))
let stringWithContentsOfFile_usedEncoding_error  (path : [`NSString] Objc.t) (enc : [`NSStringEncoding] Objc.t) (error : bool) =
    let sel, args = (
      Objc.arg path "stringWithContentsOfFile" make_pointer_from_object
      ++ Objc.arg enc "usedEncoding" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))
(* class methods for category NSStringPathExtensions of NSString *)
let pathWithComponents (components : [`NSArray] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "pathWithComponents:")
      [make_pointer_from_object components]) : [`NSString] Objc.id))
