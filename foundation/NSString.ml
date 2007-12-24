(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSRange


external init : unit -> unit = "caml_init_NSString"
let _ = init()
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


let make_NSObject_of_NSString (o : [`NSString] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSString *)
let class_NSString = object
   val repr = Classes.find "NSString"
   method _new = (Objc.objcnew repr : [`NSString] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSString] nativeNSObject)
(* methods for category NSStringDeprecated *)
   (* skipping selector stringWithContentsOfFile *)
   (* skipping selector stringWithContentsOfURL *)
   method stringWithCString  ?length:(length : int option) (bytes : string) =
     let sel, args = (
       Objc.arg bytes "stringWithCString" make_string
       ++ Objc.opt_arg length "length" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   (* skipping selector stringWithCString *)
(* methods for category NSExtendedStringPropertyListParsing *)
(* methods for category NSStringExtensionMethods *)
   method defaultCStringEncoding =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultCStringEncoding:")[]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method availableStringEncodings =
     ((*pointer to const NSStringEncoding*) unsupported (Objc.invoke (*pointer to const NSStringEncoding*) Objc.tag_unsupported repr (Selector.find "availableStringEncodings:")[]) : (*pointer to const NSStringEncoding*) unsupported)

*)
   method localizedNameOfStringEncoding (encoding : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "localizedNameOfStringEncoding:")[make_int64 encoding]) : [`NSString] Objc.nativeNSObject)
   method string =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "string:")[]) : [`NSString] Objc.nativeNSObject)
   method stringWithString (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "stringWithString:")[make_pointer_from_object string]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method stringWithCharacters  ~length:(length : int ) (characters : (*pointer to const unichar*) unsupported) =
     let sel, args = (
       Objc.arg characters "stringWithCharacters" (*pointer to const unichar*) unsupported
       ++ Objc.arg length "length" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)

*)
   method stringWithUTF8String (nullTerminatedCString : string) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "stringWithUTF8String:")[make_string nullTerminatedCString]) : [`NSString] Objc.nativeNSObject)
   (* skipping selector stringWithCString:encoding *)
   method stringWithContentsOfURL  ?encoding:(enc : int64 option) ?error:(error : bool option) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "stringWithContentsOfURL" make_pointer_from_object
       ++ Objc.opt_arg enc "encoding" make_int64
       ++ Objc.opt_arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method stringWithContentsOfFile  ?encoding:(enc : int64 option) ?error:(error : bool option) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "stringWithContentsOfFile" make_pointer_from_object
       ++ Objc.opt_arg enc "encoding" make_int64
       ++ Objc.opt_arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   (* skipping selector stringWithContentsOfURL:usedEncoding:error *)
   (* skipping selector stringWithContentsOfFile:usedEncoding:error *)
end
(* Encapsulation for native instance of NSString *)
class native_NSString = fun (o : [`NSString] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSString o) as super
(* methods for category NSStringDeprecated *)
   method cString =
     (get_string (Objc.invoke Objc.tag_string repr (Selector.find "cString:")[]) : string)
   method lossyCString =
     (get_string (Objc.invoke Objc.tag_string repr (Selector.find "lossyCString:")[]) : string)
   method cStringLength =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "cStringLength:")[]) : int)
   (* skipping selector getCString *)
   (* skipping selector getCString:maxLength *)
(*  UNSUPPORTED
   method getCString  ?maxLength:(maxLength : int option) ?range:(aRange : (int * int) option) ?remainingRange:(leftoverRange : (*NSRangePointer*) unsupported option) (bytes : string) =
     let sel, args = (
       Objc.arg bytes "getCString" make_string
       ++ Objc.opt_arg maxLength "maxLength" make_int
       ++ Objc.opt_arg aRange "range" make_range
       ++ Objc.opt_arg leftoverRange "remainingRange" (*NSRangePointer*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   (* skipping selector writeToFile:atomically *)
   (* skipping selector writeToURL:atomically *)
   (* skipping selector initWithContentsOfFile *)
   (* skipping selector initWithContentsOfURL *)
   method initWithCStringNoCopy  ~length:(length : int ) ~freeWhenDone:(freeBuffer : bool ) (bytes : string) =
     let sel, args = (
       Objc.arg bytes "initWithCStringNoCopy" make_string
       ++ Objc.arg length "length" make_int
       ++ Objc.arg freeBuffer "freeWhenDone" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithCString  ?length:(length : int option) (bytes : string) =
     let sel, args = (
       Objc.arg bytes "initWithCString" make_string
       ++ Objc.opt_arg length "length" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithCString *)
(* methods for category NSExtendedStringPropertyListParsing *)
   method propertyList =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "propertyList:")[]) : [`NSObject] Objc.nativeNSObject)
   method propertyListFromStringsFileFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "propertyListFromStringsFileFormat:")[]) : [`NSDictionary] Objc.nativeNSObject)
(* methods for category NSStringExtensionMethods *)
   (* skipping selector getCharacters *)
   method getCharacters  ?range:(aRange : (int * int) option) (buffer : [`unichar] Objc.t) =
     let sel, args = (
       Objc.arg buffer "getCharacters" make_pointer_from_object
       ++ Objc.opt_arg aRange "range" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method substringFromIndex (from : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "substringFromIndex:")[make_int from]) : [`NSString] Objc.nativeNSObject)
   method substringToIndex (_to : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "substringToIndex:")[make_int _to]) : [`NSString] Objc.nativeNSObject)
   method substringWithRange (range : int * int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "substringWithRange:")[make_range range]) : [`NSString] Objc.nativeNSObject)
   (* skipping selector compare *)
   (* skipping selector compare:options *)
   (* skipping selector compare:options:range *)
   method compare  ?options:(mask : int option) ?range:(compareRange : (int * int) option) ?locale:(dict : [`NSDictionary] Objc.t option) (string : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg string "compare" make_pointer_from_object
       ++ Objc.opt_arg mask "options" make_int
       ++ Objc.opt_arg compareRange "range" make_range
       ++ Objc.opt_arg dict "locale" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
   method caseInsensitiveCompare (string : [`NSString] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "caseInsensitiveCompare:")[make_pointer_from_object string]) : int)
   method localizedCompare (string : [`NSString] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "localizedCompare:")[make_pointer_from_object string]) : int)
   method localizedCaseInsensitiveCompare (string : [`NSString] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "localizedCaseInsensitiveCompare:")[make_pointer_from_object string]) : int)
   method isEqualToString (aString : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEqualToString:")[make_pointer_from_object aString]) : bool)
   method hasPrefix (aString : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasPrefix:")[make_pointer_from_object aString]) : bool)
   method hasSuffix (aString : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasSuffix:")[make_pointer_from_object aString]) : bool)
   (* skipping selector rangeOfString *)
   (* skipping selector rangeOfString:options *)
   method rangeOfString  ?options:(mask : int option) ?range:(searchRange : (int * int) option) (aString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aString "rangeOfString" make_pointer_from_object
       ++ Objc.opt_arg mask "options" make_int
       ++ Objc.opt_arg searchRange "range" make_range
     ) ([],[]) in
       (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find_list sel) args) : (int * int))
   (* skipping selector rangeOfCharacterFromSet *)
   (* skipping selector rangeOfCharacterFromSet:options *)
   method rangeOfCharacterFromSet  ?options:(mask : int option) ?range:(searchRange : (int * int) option) (aSet : [`NSCharacterSet] Objc.t) =
     let sel, args = (
       Objc.arg aSet "rangeOfCharacterFromSet" make_pointer_from_object
       ++ Objc.opt_arg mask "options" make_int
       ++ Objc.opt_arg searchRange "range" make_range
     ) ([],[]) in
       (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find_list sel) args) : (int * int))
   method rangeOfComposedCharacterSequenceAtIndex (index : int) =
     (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find "rangeOfComposedCharacterSequenceAtIndex:")[make_int index]) : (int * int))
   method stringByAppendingString (aString : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "stringByAppendingString:")[make_pointer_from_object aString]) : [`NSString] Objc.nativeNSObject)
   method doubleValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "doubleValue:")[]) : float)
   method floatValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "floatValue:")[]) : float)
   method intValue =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "intValue:")[]) : int)
   method componentsSeparatedByString (separator : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "componentsSeparatedByString:")[make_pointer_from_object separator]) : [`NSArray] Objc.nativeNSObject)
   method commonPrefixWithString  ~options:(mask : int ) (aString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aString "commonPrefixWithString" make_pointer_from_object
       ++ Objc.arg mask "options" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method uppercaseString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "uppercaseString:")[]) : [`NSString] Objc.nativeNSObject)
   method lowercaseString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "lowercaseString:")[]) : [`NSString] Objc.nativeNSObject)
   method capitalizedString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "capitalizedString:")[]) : [`NSString] Objc.nativeNSObject)
   method stringByTrimmingCharactersInSet (set : [`NSCharacterSet] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "stringByTrimmingCharactersInSet:")[make_pointer_from_object set]) : [`NSString] Objc.nativeNSObject)
   method stringByPaddingToLength  ~withString:(padString : [`NSString] Objc.t ) ~startingAtIndex:(padIndex : int ) (newLength : int) =
     let sel, args = (
       Objc.arg newLength "stringByPaddingToLength" make_int
       ++ Objc.arg padString "withString" make_pointer_from_object
       ++ Objc.arg padIndex "startingAtIndex" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method getLineStart  ~l_end:(lineEndPtr : (*pointer to unsigned int*) unsupported ) ~contentsEnd:(contentsEndPtr : (*pointer to unsigned int*) unsupported ) ~forRange:(range : (int * int) ) (startPtr : (*pointer to unsigned int*) unsupported) =
     let sel, args = (
       Objc.arg startPtr "getLineStart" (*pointer to unsigned int*) unsupported
       ++ Objc.arg lineEndPtr "l_end" (*pointer to unsigned int*) unsupported
       ++ Objc.arg contentsEndPtr "contentsEnd" (*pointer to unsigned int*) unsupported
       ++ Objc.arg range "forRange" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method lineRangeForRange (range : int * int) =
     (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find "lineRangeForRange:")[make_range range]) : (int * int))
(*  UNSUPPORTED
   method getParagraphStart  ~l_end:(parEndPtr : (*pointer to unsigned int*) unsupported ) ~contentsEnd:(contentsEndPtr : (*pointer to unsigned int*) unsupported ) ~forRange:(range : (int * int) ) (startPtr : (*pointer to unsigned int*) unsupported) =
     let sel, args = (
       Objc.arg startPtr "getParagraphStart" (*pointer to unsigned int*) unsupported
       ++ Objc.arg parEndPtr "l_end" (*pointer to unsigned int*) unsupported
       ++ Objc.arg contentsEndPtr "contentsEnd" (*pointer to unsigned int*) unsupported
       ++ Objc.arg range "forRange" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method paragraphRangeForRange (range : int * int) =
     (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find "paragraphRangeForRange:")[make_range range]) : (int * int))
   method description =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "description:")[]) : [`NSString] Objc.nativeNSObject)
   method hash =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "hash:")[]) : int)
   method fastestEncoding =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "fastestEncoding:")[]) : int64)
   method smallestEncoding =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "smallestEncoding:")[]) : int64)
   method dataUsingEncoding  ?allowLossyConversion:(lossy : bool option) (encoding : int64) =
     let sel, args = (
       Objc.arg encoding "dataUsingEncoding" make_int64
       ++ Objc.opt_arg lossy "allowLossyConversion" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)
   (* skipping selector dataUsingEncoding *)
   method canBeConvertedToEncoding (encoding : int64) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canBeConvertedToEncoding:")[make_int64 encoding]) : bool)
   method cStringUsingEncoding (encoding : int64) =
     (get_string (Objc.invoke Objc.tag_string repr (Selector.find "cStringUsingEncoding:")[make_int64 encoding]) : string)
   (* skipping selector getCString:maxLength:encoding *)
   method maximumLengthOfBytesUsingEncoding (enc : int64) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "maximumLengthOfBytesUsingEncoding:")[make_int64 enc]) : int)
   method lengthOfBytesUsingEncoding (enc : int64) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "lengthOfBytesUsingEncoding:")[make_int64 enc]) : int)
   method decomposedStringWithCanonicalMapping =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "decomposedStringWithCanonicalMapping:")[]) : [`NSString] Objc.nativeNSObject)
   method precomposedStringWithCanonicalMapping =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "precomposedStringWithCanonicalMapping:")[]) : [`NSString] Objc.nativeNSObject)
   method decomposedStringWithCompatibilityMapping =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "decomposedStringWithCompatibilityMapping:")[]) : [`NSString] Objc.nativeNSObject)
   method precomposedStringWithCompatibilityMapping =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "precomposedStringWithCompatibilityMapping:")[]) : [`NSString] Objc.nativeNSObject)
   method l_UTF8String =
     (get_string (Objc.invoke Objc.tag_string repr (Selector.find "l_UTF8String:")[]) : string)
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method initWithCharactersNoCopy  ~length:(length : int ) ~freeWhenDone:(freeBuffer : bool ) (characters : [`unichar] Objc.t) =
     let sel, args = (
       Objc.arg characters "initWithCharactersNoCopy" make_pointer_from_object
       ++ Objc.arg length "length" make_int
       ++ Objc.arg freeBuffer "freeWhenDone" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method initWithCharacters  ~length:(length : int ) (characters : (*pointer to const unichar*) unsupported) =
     let sel, args = (
       Objc.arg characters "initWithCharacters" (*pointer to const unichar*) unsupported
       ++ Objc.arg length "length" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method initWithUTF8String (nullTerminatedCString : string) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithUTF8String:")[make_string nullTerminatedCString]) : [`NSObject] Objc.nativeNSObject)
   method initWithString (aString : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithString:")[make_pointer_from_object aString]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithFormat:arguments *)
(*  UNSUPPORTED
   method initWithFormat  ?locale:(dict : [`NSDictionary] Objc.t option) ?arguments:(argList : (*va_list*) unsupported option) (format : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg format "initWithFormat" make_pointer_from_object
       ++ Objc.opt_arg dict "locale" make_pointer_from_object
       ++ Objc.opt_arg argList "arguments" (*va_list*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method initWithData  ~encoding:(encoding : int64 ) (data : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg data "initWithData" make_pointer_from_object
       ++ Objc.arg encoding "encoding" make_int64
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method initWithBytes  ~length:(len : int ) ~encoding:(encoding : int64 ) (bytes : (*pointer to const void*) unsupported) =
     let sel, args = (
       Objc.arg bytes "initWithBytes" (*pointer to const void*) unsupported
       ++ Objc.arg len "length" make_int
       ++ Objc.arg encoding "encoding" make_int64
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method initWithBytesNoCopy  ~length:(len : int ) ~encoding:(encoding : int64 ) ~freeWhenDone:(freeBuffer : bool ) (bytes : [`void] Objc.t) =
     let sel, args = (
       Objc.arg bytes "initWithBytesNoCopy" make_pointer_from_object
       ++ Objc.arg len "length" make_int
       ++ Objc.arg encoding "encoding" make_int64
       ++ Objc.arg freeBuffer "freeWhenDone" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithCString:encoding *)
   method initWithContentsOfURL  ?encoding:(enc : int64 option) ?error:(error : bool option) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "initWithContentsOfURL" make_pointer_from_object
       ++ Objc.opt_arg enc "encoding" make_int64
       ++ Objc.opt_arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfFile  ?encoding:(enc : int64 option) ?error:(error : bool option) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "initWithContentsOfFile" make_pointer_from_object
       ++ Objc.opt_arg enc "encoding" make_int64
       ++ Objc.opt_arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithContentsOfURL:usedEncoding:error *)
   (* skipping selector initWithContentsOfFile:usedEncoding:error *)
   method writeToURL  ~atomically:(useAuxiliaryFile : bool ) ?encoding:(enc : int64 option) ?error:(error : bool option) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "writeToURL" make_pointer_from_object
       ++ Objc.arg useAuxiliaryFile "atomically" make_bool
       ++ Objc.opt_arg enc "encoding" make_int64
       ++ Objc.opt_arg error "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method writeToFile  ~atomically:(useAuxiliaryFile : bool ) ?encoding:(enc : int64 option) ?error:(error : bool option) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "writeToFile" make_pointer_from_object
       ++ Objc.arg useAuxiliaryFile "atomically" make_bool
       ++ Objc.opt_arg enc "encoding" make_int64
       ++ Objc.opt_arg error "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method length =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "length:")[]) : int)
(*  UNSUPPORTED
   method characterAtIndex (index : int) =
     ((*unichar*) unsupported (Objc.invoke (*unichar*) Objc.tag_unsupported repr (Selector.find "characterAtIndex:")[make_int index]) : (*unichar*) unsupported)

*)
end
let make_NSString_of_NSMutableString (o : [`NSMutableString] nativeNSObject) = (Obj.magic o : [`NSString] nativeNSObject)
(* Class object for NSMutableString *)
let class_NSMutableString = object
   val repr = Classes.find "NSMutableString"
   method _new = (Objc.objcnew repr : [`NSMutableString] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMutableString] nativeNSObject)
(* methods for category NSMutableStringExtensionMethods *)
   method stringWithCapacity (capacity : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "stringWithCapacity:")[make_int capacity]) : [`NSMutableString] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSMutableString *)
class native_NSMutableString = fun (o : [`NSMutableString] nativeNSObject) -> object (self)
   inherit native_NSString (make_NSString_of_NSMutableString o) as super
(* methods for category NSMutableStringExtensionMethods *)
   method insertString  ~atIndex:(loc : int ) (aString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aString "insertString" make_pointer_from_object
       ++ Objc.arg loc "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method deleteCharactersInRange (range : int * int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "deleteCharactersInRange:")[make_range range]) : unit)
   method appendString (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "appendString:")[make_pointer_from_object aString]) : unit)
   method setString (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setString:")[make_pointer_from_object aString]) : unit)
   method initWithCapacity (capacity : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithCapacity:")[make_int capacity]) : [`NSObject] Objc.nativeNSObject)
   method replaceOccurrencesOfString  ~withString:(replacement : [`NSString] Objc.t ) ~options:(opts : int ) ~range:(searchRange : (int * int) ) (target : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg target "replaceOccurrencesOfString" make_pointer_from_object
       ++ Objc.arg replacement "withString" make_pointer_from_object
       ++ Objc.arg opts "options" make_int
       ++ Objc.arg searchRange "range" make_range
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
   method replaceCharactersInRange  ~withString:(aString : [`NSString] Objc.t ) (range : int * int) =
     let sel, args = (
       Objc.arg range "replaceCharactersInRange" make_range
       ++ Objc.arg aString "withString" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
let make_NSString_of_NSSimpleCString (o : [`NSSimpleCString] nativeNSObject) = (Obj.magic o : [`NSString] nativeNSObject)
(* Class object for NSSimpleCString *)
let class_NSSimpleCString = object
   val repr = Classes.find "NSSimpleCString"
   method _new = (Objc.objcnew repr : [`NSSimpleCString] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSimpleCString] nativeNSObject)
end
(* Encapsulation for native instance of NSSimpleCString *)
class native_NSSimpleCString = fun (o : [`NSSimpleCString] nativeNSObject) -> object (self)
   inherit native_NSString (make_NSString_of_NSSimpleCString o) as super
end
let make_NSSimpleCString_of_NSConstantString (o : [`NSConstantString] nativeNSObject) = (Obj.magic o : [`NSSimpleCString] nativeNSObject)
(* Class object for NSConstantString *)
let class_NSConstantString = object
   val repr = Classes.find "NSConstantString"
   method _new = (Objc.objcnew repr : [`NSConstantString] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSConstantString] nativeNSObject)
end
(* Encapsulation for native instance of NSConstantString *)
class native_NSConstantString = fun (o : [`NSConstantString] nativeNSObject) -> object (self)
   inherit native_NSSimpleCString (make_NSSimpleCString_of_NSConstantString o) as super
end
