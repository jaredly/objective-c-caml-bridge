(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedScanner of NSScanner *)
class virtual methods_NSScanner = object (self)
  method virtual repr : [`NSObject] Objc.id
  method charactersToBeSkipped =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "charactersToBeSkipped")[])
       : [`NSCharacterSet] Objc.id))
  method caseSensitive =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "caseSensitive")[])
       : bool)
  method locale =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "locale")[])
       : [`NSDictionary] Objc.id))
  method scanInt (value : [`int] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scanInt:")
      [make_pointer_from_object value]) : bool)
(*  UNSUPPORTED
  method scanHexInt (value : (*pointer to unsigned int*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scanHexInt:")
      [(*pointer to unsigned int*) unsupported value]) : bool)

*)
(*  UNSUPPORTED
  method scanLongLong (value : (*pointer to long long*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scanLongLong:")
      [(*pointer to long long*) unsupported value]) : bool)

*)
  method scanFloat (value : [`float] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scanFloat:")
      [make_pointer_from_object value]) : bool)
  method scanDouble (value : [`double] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scanDouble:")
      [make_pointer_from_object value]) : bool)
(*  UNSUPPORTED
  method scanString_intoString  (string : [`NSString] Objc.t) (value : (*pointer to pointer to NSString*) unsupported) =
    let sel, args = (
      Objc.arg string "scanString" make_pointer_from_object
      ++ Objc.arg value "intoString" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
(*  UNSUPPORTED
  method scanCharactersFromSet_intoString  (set : [`NSCharacterSet] Objc.t) (value : (*pointer to pointer to NSString*) unsupported) =
    let sel, args = (
      Objc.arg set "scanCharactersFromSet" make_pointer_from_object
      ++ Objc.arg value "intoString" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
(*  UNSUPPORTED
  method scanUpToString_intoString  (string : [`NSString] Objc.t) (value : (*pointer to pointer to NSString*) unsupported) =
    let sel, args = (
      Objc.arg string "scanUpToString" make_pointer_from_object
      ++ Objc.arg value "intoString" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
(*  UNSUPPORTED
  method scanUpToCharactersFromSet_intoString  (set : [`NSCharacterSet] Objc.t) (value : (*pointer to pointer to NSString*) unsupported) =
    let sel, args = (
      Objc.arg set "scanUpToCharactersFromSet" make_pointer_from_object
      ++ Objc.arg value "intoString" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method isAtEnd =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isAtEnd")[])
       : bool)
  method initWithString (string : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithString:")
      [make_pointer_from_object string]) : [`NSObject] Objc.id)
end
