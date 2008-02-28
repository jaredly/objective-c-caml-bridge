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


class t = fun (r :[`NSString] id) -> object
  inherit Cati_NSStringDeprecated.methods_NSString
  inherit Cati_NSExtendedStringPropertyListParsing.methods_NSString
  inherit Cati_NSStringExtensionMethods.methods_NSString
  inherit Im_NSString.methods
  method repr = r
end

(* Class object for NSString *)
let c = Classes.find "NSString"
let _new()= (Objc.objcnew c : [`NSString] id)
let alloc() = (Objc.objcalloc c : [`NSString] id)
(* class methods for category NSStringDeprecated of NSString *)
  (* skipping selector stringWithContentsOfFile *)
  (* skipping selector stringWithContentsOfURL *)
let stringWithCString  ?length:(length : int option) (bytes : string) =
    let sel, args = (
      Objc.arg bytes "stringWithCString" make_string
      ++ Objc.opt_arg length "length" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  (* skipping selector stringWithCString *)
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
let stringWithCharacters  ~length:(length : int ) (characters : (*pointer to const unichar*) unsupported) =
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
  (* skipping selector stringWithCString:encoding *)
let stringWithContentsOfURL  ?encoding:(enc : int64 option) ?error:(error : bool option) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "stringWithContentsOfURL" make_pointer_from_object
      ++ Objc.opt_arg enc "encoding" make_int64
      ++ Objc.opt_arg error "error" make_error
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))
let stringWithContentsOfFile  ?encoding:(enc : int64 option) ?error:(error : bool option) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "stringWithContentsOfFile" make_pointer_from_object
      ++ Objc.opt_arg enc "encoding" make_int64
      ++ Objc.opt_arg error "error" make_error
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  (* skipping selector stringWithContentsOfURL:usedEncoding:error *)
  (* skipping selector stringWithContentsOfFile:usedEncoding:error *)
