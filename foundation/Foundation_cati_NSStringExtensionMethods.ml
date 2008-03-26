(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSStringExtensionMethods of NSString *)
class virtual methods_NSString = object (self)
  method virtual repr : [`NSObject] Objc.id
  method getCharacters (buffer : [`unichar] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "getCharacters:")
      [make_pointer_from_object buffer]) : unit)
  method getCharacters_range  (buffer : [`unichar] Objc.t) (aRange : NSRange.t) =
    let sel, args = (
      Objc.arg buffer "getCharacters" make_pointer_from_object
      ++ Objc.arg aRange "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method substringFromIndex (from : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "substringFromIndex:")
      [make_int from]) : [`NSString] Objc.id))
  method substringToIndex (_to : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "substringToIndex:")
      [make_int _to]) : [`NSString] Objc.id))
  method substringWithRange (range : NSRange.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "substringWithRange:")
      [make_range range]) : [`NSString] Objc.id))
  method compare (string : [`NSString] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "compare:")
      [make_pointer_from_object string]) : int)
  method compare_options  (string : [`NSString] Objc.t) (mask : int) =
    let sel, args = (
      Objc.arg string "compare" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method compare_options_range  (string : [`NSString] Objc.t) (mask : int) (compareRange : NSRange.t) =
    let sel, args = (
      Objc.arg string "compare" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
      ++ Objc.arg compareRange "range" make_range
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method compare_options_range_locale  (string : [`NSString] Objc.t) (mask : int) (compareRange : NSRange.t) (dict : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg string "compare" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
      ++ Objc.arg compareRange "range" make_range
      ++ Objc.arg dict "locale" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method caseInsensitiveCompare (string : [`NSString] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "caseInsensitiveCompare:")
      [make_pointer_from_object string]) : int)
  method localizedCompare (string : [`NSString] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "localizedCompare:")
      [make_pointer_from_object string]) : int)
  method localizedCaseInsensitiveCompare (string : [`NSString] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "localizedCaseInsensitiveCompare:")
      [make_pointer_from_object string]) : int)
  method isEqualToString (aString : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToString:")
      [make_pointer_from_object aString]) : bool)
  method hasPrefix (aString : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasPrefix:")
      [make_pointer_from_object aString]) : bool)
  method hasSuffix (aString : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasSuffix:")
      [make_pointer_from_object aString]) : bool)
  method rangeOfString (aString : [`NSString] Objc.t) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "rangeOfString:")
      [make_pointer_from_object aString]) : NSRange.t)
  method rangeOfString_options  (aString : [`NSString] Objc.t) (mask : int) =
    let sel, args = (
      Objc.arg aString "rangeOfString" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : NSRange.t)
  method rangeOfString_options_range  (aString : [`NSString] Objc.t) (mask : int) (searchRange : NSRange.t) =
    let sel, args = (
      Objc.arg aString "rangeOfString" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
      ++ Objc.arg searchRange "range" make_range
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : NSRange.t)
  method rangeOfCharacterFromSet (aSet : [`NSCharacterSet] Objc.t) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "rangeOfCharacterFromSet:")
      [make_pointer_from_object aSet]) : NSRange.t)
  method rangeOfCharacterFromSet_options  (aSet : [`NSCharacterSet] Objc.t) (mask : int) =
    let sel, args = (
      Objc.arg aSet "rangeOfCharacterFromSet" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : NSRange.t)
  method rangeOfCharacterFromSet_options_range  (aSet : [`NSCharacterSet] Objc.t) (mask : int) (searchRange : NSRange.t) =
    let sel, args = (
      Objc.arg aSet "rangeOfCharacterFromSet" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
      ++ Objc.arg searchRange "range" make_range
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : NSRange.t)
  method rangeOfComposedCharacterSequenceAtIndex (index : int) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "rangeOfComposedCharacterSequenceAtIndex:")
      [make_int index]) : NSRange.t)
  method stringByAppendingString (aString : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByAppendingString:")
      [make_pointer_from_object aString]) : [`NSString] Objc.id))
  method doubleValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "doubleValue")[])
       : float)
  method floatValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "floatValue")[])
       : float)
  method intValue =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "intValue")[])
       : int)
  method componentsSeparatedByString (separator : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "componentsSeparatedByString:")
      [make_pointer_from_object separator]) : [`NSArray] Objc.id))
  method commonPrefixWithString_options  (aString : [`NSString] Objc.t) (mask : int) =
    let sel, args = (
      Objc.arg aString "commonPrefixWithString" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method uppercaseString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "uppercaseString")[])
       : [`NSString] Objc.id))
  method lowercaseString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "lowercaseString")[])
       : [`NSString] Objc.id))
  method capitalizedString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "capitalizedString")[])
       : [`NSString] Objc.id))
  method stringByTrimmingCharactersInSet (set : [`NSCharacterSet] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByTrimmingCharactersInSet:")
      [make_pointer_from_object set]) : [`NSString] Objc.id))
  method stringByPaddingToLength_withString_startingAtIndex  (newLength : int) (padString : [`NSString] Objc.t) (padIndex : int) =
    let sel, args = (
      Objc.arg newLength "stringByPaddingToLength" make_int
      ++ Objc.arg padString "withString" make_pointer_from_object
      ++ Objc.arg padIndex "startingAtIndex" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
(*  UNSUPPORTED
  method getLineStart_end_contentsEnd_forRange  (startPtr : (*pointer to unsigned int*) unsupported) (lineEndPtr : (*pointer to unsigned int*) unsupported) (contentsEndPtr : (*pointer to unsigned int*) unsupported) (range : NSRange.t) =
    let sel, args = (
      Objc.arg startPtr "getLineStart" (*pointer to unsigned int*) unsupported
      ++ Objc.arg lineEndPtr "end" (*pointer to unsigned int*) unsupported
      ++ Objc.arg contentsEndPtr "contentsEnd" (*pointer to unsigned int*) unsupported
      ++ Objc.arg range "forRange" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method lineRangeForRange (range : NSRange.t) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "lineRangeForRange:")
      [make_range range]) : NSRange.t)
(*  UNSUPPORTED
  method getParagraphStart_end_contentsEnd_forRange  (startPtr : (*pointer to unsigned int*) unsupported) (parEndPtr : (*pointer to unsigned int*) unsupported) (contentsEndPtr : (*pointer to unsigned int*) unsupported) (range : NSRange.t) =
    let sel, args = (
      Objc.arg startPtr "getParagraphStart" (*pointer to unsigned int*) unsupported
      ++ Objc.arg parEndPtr "end" (*pointer to unsigned int*) unsupported
      ++ Objc.arg contentsEndPtr "contentsEnd" (*pointer to unsigned int*) unsupported
      ++ Objc.arg range "forRange" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method paragraphRangeForRange (range : NSRange.t) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "paragraphRangeForRange:")
      [make_range range]) : NSRange.t)
  method description =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "description")[])
       : [`NSString] Objc.id))
  method hash =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "hash")[])
       : int)
  method fastestEncoding =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "fastestEncoding")[])
       : int64)
  method smallestEncoding =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "smallestEncoding")[])
       : int64)
  method dataUsingEncoding_allowLossyConversion  (encoding : int64) (lossy : bool) =
    let sel, args = (
      Objc.arg encoding "dataUsingEncoding" make_int64
      ++ Objc.arg lossy "allowLossyConversion" make_bool
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSData] Objc.id))
  method dataUsingEncoding (encoding : int64) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataUsingEncoding:")
      [make_int64 encoding]) : [`NSData] Objc.id))
  method canBeConvertedToEncoding (encoding : int64) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canBeConvertedToEncoding:")
      [make_int64 encoding]) : bool)
  method cStringUsingEncoding (encoding : int64) =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "cStringUsingEncoding:")
      [make_int64 encoding]) : string)
  method getCString_maxLength_encoding  (buffer : string) (maxBufferCount : int) (encoding : int64) =
    let sel, args = (
      Objc.arg buffer "getCString" make_string
      ++ Objc.arg maxBufferCount "maxLength" make_int
      ++ Objc.arg encoding "encoding" make_int64
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method maximumLengthOfBytesUsingEncoding (enc : int64) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "maximumLengthOfBytesUsingEncoding:")
      [make_int64 enc]) : int)
  method lengthOfBytesUsingEncoding (enc : int64) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "lengthOfBytesUsingEncoding:")
      [make_int64 enc]) : int)
  method decomposedStringWithCanonicalMapping =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decomposedStringWithCanonicalMapping")[])
       : [`NSString] Objc.id))
  method precomposedStringWithCanonicalMapping =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "precomposedStringWithCanonicalMapping")[])
       : [`NSString] Objc.id))
  method decomposedStringWithCompatibilityMapping =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decomposedStringWithCompatibilityMapping")[])
       : [`NSString] Objc.id))
  method precomposedStringWithCompatibilityMapping =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "precomposedStringWithCompatibilityMapping")[])
       : [`NSString] Objc.id))
  method utf8String =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "UTF8String")[])
       : string)
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method initWithCharactersNoCopy_length_freeWhenDone  (characters : [`unichar] Objc.t) (length : int) (freeBuffer : bool) =
    let sel, args = (
      Objc.arg characters "initWithCharactersNoCopy" make_pointer_from_object
      ++ Objc.arg length "length" make_int
      ++ Objc.arg freeBuffer "freeWhenDone" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method initWithCharacters_length  (characters : (*pointer to const unichar*) unsupported) (length : int) =
    let sel, args = (
      Objc.arg characters "initWithCharacters" (*pointer to const unichar*) unsupported
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method initWithUTF8String (nullTerminatedCString : string) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithUTF8String:")
      [make_string nullTerminatedCString]) : [`NSObject] Objc.id)
  method initWithString (aString : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithString:")
      [make_pointer_from_object aString]) : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method initWithFormat_arguments  (format : [`NSString] Objc.t) (argList : (*va_list*) unsupported) =
    let sel, args = (
      Objc.arg format "initWithFormat" make_pointer_from_object
      ++ Objc.arg argList "arguments" (*va_list*) unsupported
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
(*  UNSUPPORTED
  method initWithFormat_locale_arguments  (format : [`NSString] Objc.t) (dict : [`NSDictionary] Objc.t) (argList : (*va_list*) unsupported) =
    let sel, args = (
      Objc.arg format "initWithFormat" make_pointer_from_object
      ++ Objc.arg dict "locale" make_pointer_from_object
      ++ Objc.arg argList "arguments" (*va_list*) unsupported
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method initWithData_encoding  (data : [`NSData] Objc.t) (encoding : int64) =
    let sel, args = (
      Objc.arg data "initWithData" make_pointer_from_object
      ++ Objc.arg encoding "encoding" make_int64
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method initWithBytes_length_encoding  (bytes : (*pointer to const void*) unsupported) (len : int) (encoding : int64) =
    let sel, args = (
      Objc.arg bytes "initWithBytes" (*pointer to const void*) unsupported
      ++ Objc.arg len "length" make_int
      ++ Objc.arg encoding "encoding" make_int64
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method initWithBytesNoCopy_length_encoding_freeWhenDone  (bytes : [`void] Objc.t) (len : int) (encoding : int64) (freeBuffer : bool) =
    let sel, args = (
      Objc.arg bytes "initWithBytesNoCopy" make_pointer_from_object
      ++ Objc.arg len "length" make_int
      ++ Objc.arg encoding "encoding" make_int64
      ++ Objc.arg freeBuffer "freeWhenDone" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithCString_encoding  (nullTerminatedCString : string) (encoding : int64) =
    let sel, args = (
      Objc.arg nullTerminatedCString "initWithCString" make_string
      ++ Objc.arg encoding "encoding" make_int64
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfURL_encoding_error  (url : [`NSURL] Objc.t) (enc : int64) (error : bool) =
    let sel, args = (
      Objc.arg url "initWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg enc "encoding" make_int64
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfFile_encoding_error  (path : [`NSString] Objc.t) (enc : int64) (error : bool) =
    let sel, args = (
      Objc.arg path "initWithContentsOfFile" make_pointer_from_object
      ++ Objc.arg enc "encoding" make_int64
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfURL_usedEncoding_error  (url : [`NSURL] Objc.t) (enc : [`NSStringEncoding] Objc.t) (error : bool) =
    let sel, args = (
      Objc.arg url "initWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg enc "usedEncoding" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfFile_usedEncoding_error  (path : [`NSString] Objc.t) (enc : [`NSStringEncoding] Objc.t) (error : bool) =
    let sel, args = (
      Objc.arg path "initWithContentsOfFile" make_pointer_from_object
      ++ Objc.arg enc "usedEncoding" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method writeToURL_atomically_encoding_error  (url : [`NSURL] Objc.t) (useAuxiliaryFile : bool) (enc : int64) (error : bool) =
    let sel, args = (
      Objc.arg url "writeToURL" make_pointer_from_object
      ++ Objc.arg useAuxiliaryFile "atomically" make_bool
      ++ Objc.arg enc "encoding" make_int64
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToFile_atomically_encoding_error  (path : [`NSString] Objc.t) (useAuxiliaryFile : bool) (enc : int64) (error : bool) =
    let sel, args = (
      Objc.arg path "writeToFile" make_pointer_from_object
      ++ Objc.arg useAuxiliaryFile "atomically" make_bool
      ++ Objc.arg enc "encoding" make_int64
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
