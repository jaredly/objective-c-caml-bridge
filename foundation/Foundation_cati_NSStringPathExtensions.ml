(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSStringPathExtensions of NSString *)
class virtual methods_NSString = object (self)
  method virtual repr : [`NSObject] Objc.id
  method pathComponents =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pathComponents")[])
       : [`NSArray] Objc.id))
  method isAbsolutePath =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isAbsolutePath")[])
       : bool)
  method lastPathComponent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "lastPathComponent")[])
       : [`NSString] Objc.id))
  method stringByDeletingLastPathComponent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByDeletingLastPathComponent")[])
       : [`NSString] Objc.id))
  method stringByAppendingPathComponent (str : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByAppendingPathComponent:")
      [make_pointer_from_object str]) : [`NSString] Objc.id))
  method pathExtension =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pathExtension")[])
       : [`NSString] Objc.id))
  method stringByDeletingPathExtension =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByDeletingPathExtension")[])
       : [`NSString] Objc.id))
  method stringByAppendingPathExtension (str : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByAppendingPathExtension:")
      [make_pointer_from_object str]) : [`NSString] Objc.id))
  method stringByAbbreviatingWithTildeInPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByAbbreviatingWithTildeInPath")[])
       : [`NSString] Objc.id))
  method stringByExpandingTildeInPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByExpandingTildeInPath")[])
       : [`NSString] Objc.id))
  method stringByStandardizingPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByStandardizingPath")[])
       : [`NSString] Objc.id))
  method stringByResolvingSymlinksInPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByResolvingSymlinksInPath")[])
       : [`NSString] Objc.id))
  method stringsByAppendingPaths (paths : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringsByAppendingPaths:")
      [make_pointer_from_object paths]) : [`NSArray] Objc.id))
(*  UNSUPPORTED
  method completePathIntoString_caseSensitive_matchesIntoArray_filterTypes  (outputName : (*pointer to pointer to NSString*) unsupported) (flag : bool) (outputArray : (*pointer to pointer to NSArray*) unsupported) (filterTypes : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg outputName "completePathIntoString" (*pointer to pointer to NSString*) unsupported
      ++ Objc.arg flag "caseSensitive" make_bool
      ++ Objc.arg outputArray "matchesIntoArray" (*pointer to pointer to NSArray*) unsupported
      ++ Objc.arg filterTypes "filterTypes" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)

*)
  method fileSystemRepresentation =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "fileSystemRepresentation")[])
       : string)
  method getFileSystemRepresentation_maxLength  (cname : string) (max : int) =
    let sel, args = (
      Objc.arg cname "getFileSystemRepresentation" make_string
      ++ Objc.arg max "maxLength" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
