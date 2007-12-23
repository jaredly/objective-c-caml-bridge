open Objc
open NSString
open NSArray


external init : unit -> unit = "caml_init_NSPathUtilities"
let _ = init()
(* Class object for NSString *)
let class_NSString = object
   val o = Classes.find "NSString"
   method _new = (Objc.objcnew o : [`NSString] nativeNSObject)
(* methods for category NSStringPathExtensions *)
   method pathWithComponents (components : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pathWithComponents:")[make_pointer_from_object components]) : [`NSString] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSString *)
class native_NSString = fun (o : [`NSString] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSStringPathExtensions *)
   method pathComponents =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pathComponents:")[]) : [`NSArray] Objc.nativeNSObject)
   method isAbsolutePath =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isAbsolutePath:")[]) : bool)
   method lastPathComponent =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "lastPathComponent:")[]) : [`NSString] Objc.nativeNSObject)
   method stringByDeletingLastPathComponent =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringByDeletingLastPathComponent:")[]) : [`NSString] Objc.nativeNSObject)
   method stringByAppendingPathComponent (str : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringByAppendingPathComponent:")[make_pointer_from_object str]) : [`NSString] Objc.nativeNSObject)
   method pathExtension =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pathExtension:")[]) : [`NSString] Objc.nativeNSObject)
   method stringByDeletingPathExtension =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringByDeletingPathExtension:")[]) : [`NSString] Objc.nativeNSObject)
   method stringByAppendingPathExtension (str : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringByAppendingPathExtension:")[make_pointer_from_object str]) : [`NSString] Objc.nativeNSObject)
   method stringByAbbreviatingWithTildeInPath =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringByAbbreviatingWithTildeInPath:")[]) : [`NSString] Objc.nativeNSObject)
   method stringByExpandingTildeInPath =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringByExpandingTildeInPath:")[]) : [`NSString] Objc.nativeNSObject)
   method stringByStandardizingPath =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringByStandardizingPath:")[]) : [`NSString] Objc.nativeNSObject)
   method stringByResolvingSymlinksInPath =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringByResolvingSymlinksInPath:")[]) : [`NSString] Objc.nativeNSObject)
   method stringsByAppendingPaths (paths : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringsByAppendingPaths:")[make_pointer_from_object paths]) : [`NSArray] Objc.nativeNSObject)
(*  UNSUPPORTED
   method completePathIntoString  ~caseSensitive:(flag : bool ) ~matchesIntoArray:(outputArray : (*pointer to pointer to NSArray*) unsupported ) ~filterTypes:(filterTypes : [`NSArray] Objc.t ) (outputName : (*pointer to pointer to NSString*) unsupported) =
     let sel, args = (
       Objc.arg outputName "completePathIntoString" (*pointer to pointer to NSString*) unsupported
       ++ Objc.arg flag "caseSensitive" make_bool
       ++ Objc.arg outputArray "matchesIntoArray" (*pointer to pointer to NSArray*) unsupported
       ++ Objc.arg filterTypes "filterTypes" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int o (Selector.find_list sel) args) : int)

*)
   method fileSystemRepresentation =
     (get_string (Objc.invoke Objc.tag_string o (Selector.find "fileSystemRepresentation:")[]) : string)
   method getFileSystemRepresentation  ~maxLength:(max : int ) (cname : string) =
     let sel, args = (
       Objc.arg cname "getFileSystemRepresentation" make_string
       ++ Objc.arg max "maxLength" make_int
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
end
(* Class object for NSArray *)
let class_NSArray = object
   val o = Classes.find "NSArray"
   method _new = (Objc.objcnew o : [`NSArray] nativeNSObject)
(* methods for category NSArrayPathExtensions *)
end
(* Encapsulation for native instance of NSArray *)
class native_NSArray = fun (o : [`NSArray] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSArrayPathExtensions *)
   method pathsMatchingExtensions (filterTypes : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pathsMatchingExtensions:")[make_pointer_from_object filterTypes]) : [`NSArray] Objc.nativeNSObject)
end
