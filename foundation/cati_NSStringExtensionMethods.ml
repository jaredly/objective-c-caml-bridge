(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSStringExtensionMethods of NSString *)
class virtual methods_NSString = object (self)
  method virtual repr : [`NSString] Objc.id
  (* skipping selector getCharacters *)
  method getCharacters  ?range:(aRange : (int * int) option) (buffer : [`unichar] Objc.t) =
    let sel, args = (
      Objc.arg buffer "getCharacters" make_pointer_from_object
      ++ Objc.opt_arg aRange "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method substringFromIndex (from : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "substringFromIndex:")
      [make_int from]) : [`NSString] Objc.id))
  method substringToIndex (_to : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "substringToIndex:")
      [make_int _to]) : [`NSString] Objc.id))
  method substringWithRange (range : int * int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "substringWithRange:")
      [make_range range]) : [`NSString] Objc.id))
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
  (* skipping selector rangeOfString *)
  (* skipping selector rangeOfString:options *)
  method rangeOfString  ?options:(mask : int option) ?range:(searchRange : (int * int) option) (aString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg aString "rangeOfString" make_pointer_from_object
      ++ Objc.opt_arg mask "options" make_int
      ++ Objc.opt_arg searchRange "range" make_range
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : (int * int))
  (* skipping selector rangeOfCharacterFromSet *)
  (* skipping selector rangeOfCharacterFromSet:options *)
  method rangeOfCharacterFromSet  ?options:(mask : int option) ?range:(searchRange : (int * int) option) (aSet : [`NSCharacterSet] Objc.t) =
    let sel, args = (
      Objc.arg aSet "rangeOfCharacterFromSet" make_pointer_from_object
      ++ Objc.opt_arg mask "options" make_int
      ++ Objc.opt_arg searchRange "range" make_range
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : (int * int))
  method rangeOfComposedCharacterSequenceAtIndex (index : int) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "rangeOfComposedCharacterSequenceAtIndex:")
      [make_int index]) : (int * int))
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
  method commonPrefixWithString  ~options:(mask : int ) (aString : [`NSString] Objc.t) =
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
  method stringByPaddingToLength  ~withString:(padString : [`NSString] Objc.t ) ~startingAtIndex:(padIndex : int ) (newLength : int) =
    let sel, args = (
      Objc.arg newLength "stringByPaddingToLength" make_int
      ++ Objc.arg padString "withString" make_pointer_from_object
      ++ Objc.arg padIndex "startingAtIndex" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
(*  UNSUPPORTED
  method getLineStart  ~l_end:(lineEndPtr : (*pointer to unsigned int*) unsupported ) ~contentsEnd:(contentsEndPtr : (*pointer to unsigned int*) unsupported ) ~forRange:(range : (int * int) ) (startPtr : (*pointer to unsigned int*) unsupported) =
    let sel, args = (
      Objc.arg startPtr "getLineStart" (*pointer to unsigned int*) unsupported
      ++ Objc.arg lineEndPtr "l_end" (*pointer to unsigned int*) unsupported
      ++ Objc.arg contentsEndPtr "contentsEnd" (*pointer to unsigned int*) unsupported
      ++ Objc.arg range "forRange" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method lineRangeForRange (range : int * int) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "lineRangeForRange:")
      [make_range range]) : (int * int))
(*  UNSUPPORTED
  method getParagraphStart  ~l_end:(parEndPtr : (*pointer to unsigned int*) unsupported ) ~contentsEnd:(contentsEndPtr : (*pointer to unsigned int*) unsupported ) ~forRange:(range : (int * int) ) (startPtr : (*pointer to unsigned int*) unsupported) =
    let sel, args = (
      Objc.arg startPtr "getParagraphStart" (*pointer to unsigned int*) unsupported
      ++ Objc.arg parEndPtr "l_end" (*pointer to unsigned int*) unsupported
      ++ Objc.arg contentsEndPtr "contentsEnd" (*pointer to unsigned int*) unsupported
      ++ Objc.arg range "forRange" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method paragraphRangeForRange (range : int * int) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "paragraphRangeForRange:")
      [make_range range]) : (int * int))
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
  method dataUsingEncoding  ?allowLossyConversion:(lossy : bool option) (encoding : int64) =
    let sel, args = (
      Objc.arg encoding "dataUsingEncoding" make_int64
      ++ Objc.opt_arg lossy "allowLossyConversion" make_bool
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSData] Objc.id))
  (* skipping selector dataUsingEncoding *)
  method canBeConvertedToEncoding (encoding : int64) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canBeConvertedToEncoding:")
      [make_int64 encoding]) : bool)
  method cStringUsingEncoding (encoding : int64) =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "cStringUsingEncoding:")
      [make_int64 encoding]) : string)
  (* skipping selector getCString:maxLength:encoding *)
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
  method l_UTF8String =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "l_UTF8String")[])
       : string)
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method initWithCharactersNoCopy  ~length:(length : int ) ~freeWhenDone:(freeBuffer : bool ) (characters : [`unichar] Objc.t) =
    let sel, args = (
      Objc.arg characters "initWithCharactersNoCopy" make_pointer_from_object
      ++ Objc.arg length "length" make_int
      ++ Objc.arg freeBuffer "freeWhenDone" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method initWithCharacters  ~length:(length : int ) (characters : (*pointer to const unichar*) unsupported) =
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
  (* skipping selector initWithFormat:arguments *)
(*  UNSUPPORTED
  method initWithFormat  ?locale:(dict : [`NSDictionary] Objc.t option) ?arguments:(argList : (*va_list*) unsupported option) (format : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg format "initWithFormat" make_pointer_from_object
      ++ Objc.opt_arg dict "locale" make_pointer_from_object
      ++ Objc.opt_arg argList "arguments" (*va_list*) unsupported
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method initWithData  ~encoding:(encoding : int64 ) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg data "initWithData" make_pointer_from_object
      ++ Objc.arg encoding "encoding" make_int64
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method initWithBytes  ~length:(len : int ) ~encoding:(encoding : int64 ) (bytes : (*pointer to const void*) unsupported) =
    let sel, args = (
      Objc.arg bytes "initWithBytes" (*pointer to const void*) unsupported
      ++ Objc.arg len "length" make_int
      ++ Objc.arg encoding "encoding" make_int64
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method initWithBytesNoCopy  ~length:(len : int ) ~encoding:(encoding : int64 ) ~freeWhenDone:(freeBuffer : bool ) (bytes : [`void] Objc.t) =
    let sel, args = (
      Objc.arg bytes "initWithBytesNoCopy" make_pointer_from_object
      ++ Objc.arg len "length" make_int
      ++ Objc.arg encoding "encoding" make_int64
      ++ Objc.arg freeBuffer "freeWhenDone" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithCString:encoding *)
  method initWithContentsOfURL  ?encoding:(enc : int64 option) ?error:(error : bool option) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "initWithContentsOfURL" make_pointer_from_object
      ++ Objc.opt_arg enc "encoding" make_int64
      ++ Objc.opt_arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfFile  ?encoding:(enc : int64 option) ?error:(error : bool option) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "initWithContentsOfFile" make_pointer_from_object
      ++ Objc.opt_arg enc "encoding" make_int64
      ++ Objc.opt_arg error "error" make_error
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithContentsOfURL:usedEncoding:error *)
  (* skipping selector initWithContentsOfFile:usedEncoding:error *)
  method writeToURL  ~atomically:(useAuxiliaryFile : bool ) ?encoding:(enc : int64 option) ?error:(error : bool option) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "writeToURL" make_pointer_from_object
      ++ Objc.arg useAuxiliaryFile "atomically" make_bool
      ++ Objc.opt_arg enc "encoding" make_int64
      ++ Objc.opt_arg error "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToFile  ~atomically:(useAuxiliaryFile : bool ) ?encoding:(enc : int64 option) ?error:(error : bool option) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "writeToFile" make_pointer_from_object
      ++ Objc.arg useAuxiliaryFile "atomically" make_bool
      ++ Objc.opt_arg enc "encoding" make_int64
      ++ Objc.opt_arg error "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
