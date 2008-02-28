(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFileManager *)
class virtual methods = object (self)
  method virtual repr : [`NSFileManager] Objc.id
  method currentDirectoryPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currentDirectoryPath")[])
       : [`NSString] Objc.id))
  method changeCurrentDirectoryPath (path : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "changeCurrentDirectoryPath:")
      [make_pointer_from_object path]) : bool)
  method fileAttributesAtPath  ~traverseLink:(yorn : bool ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "fileAttributesAtPath" make_pointer_from_object
      ++ Objc.arg yorn "traverseLink" make_bool
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDictionary] Objc.id))
  method changeFileAttributes  ~atPath:(path : [`NSString] Objc.t ) (attributes : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg attributes "changeFileAttributes" make_pointer_from_object
      ++ Objc.arg path "atPath" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  (* skipping selector fileExistsAtPath *)
  method fileExistsAtPath  ?isDirectory:(isDirectory : [`BOOL] Objc.t option) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "fileExistsAtPath" make_pointer_from_object
      ++ Objc.opt_arg isDirectory "isDirectory" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method isReadableFileAtPath (path : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isReadableFileAtPath:")
      [make_pointer_from_object path]) : bool)
  method isWritableFileAtPath (path : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isWritableFileAtPath:")
      [make_pointer_from_object path]) : bool)
  method isExecutableFileAtPath (path : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isExecutableFileAtPath:")
      [make_pointer_from_object path]) : bool)
  method isDeletableFileAtPath (path : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isDeletableFileAtPath:")
      [make_pointer_from_object path]) : bool)
  method displayNameAtPath (path : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "displayNameAtPath:")
      [make_pointer_from_object path]) : [`NSString] Objc.id))
  method contentsEqualAtPath  ~andPath:(path2 : [`NSString] Objc.t ) (path1 : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path1 "contentsEqualAtPath" make_pointer_from_object
      ++ Objc.arg path2 "andPath" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method linkPath  ~toPath:(dest : [`NSString] Objc.t ) ~handler:(handler : [`NSObject] Objc.t ) (src : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg src "linkPath" make_pointer_from_object
      ++ Objc.arg dest "toPath" make_pointer_from_object
      ++ Objc.arg handler "handler" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method copyPath  ~toPath:(dest : [`NSString] Objc.t ) ~handler:(handler : [`NSObject] Objc.t ) (src : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg src "copyPath" make_pointer_from_object
      ++ Objc.arg dest "toPath" make_pointer_from_object
      ++ Objc.arg handler "handler" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method movePath  ~toPath:(dest : [`NSString] Objc.t ) ~handler:(handler : [`NSObject] Objc.t ) (src : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg src "movePath" make_pointer_from_object
      ++ Objc.arg dest "toPath" make_pointer_from_object
      ++ Objc.arg handler "handler" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method removeFileAtPath  ~handler:(handler : [`NSObject] Objc.t ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "removeFileAtPath" make_pointer_from_object
      ++ Objc.arg handler "handler" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method directoryContentsAtPath (path : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "directoryContentsAtPath:")
      [make_pointer_from_object path]) : [`NSArray] Objc.id))
  method enumeratorAtPath (path : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "enumeratorAtPath:")
      [make_pointer_from_object path]) : [`NSDirectoryEnumerator] Objc.id))
  method subpathsAtPath (path : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "subpathsAtPath:")
      [make_pointer_from_object path]) : [`NSArray] Objc.id))
  method createDirectoryAtPath  ~attributes:(attributes : [`NSDictionary] Objc.t ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "createDirectoryAtPath" make_pointer_from_object
      ++ Objc.arg attributes "attributes" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method contentsAtPath (path : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "contentsAtPath:")
      [make_pointer_from_object path]) : [`NSData] Objc.id))
  method createFileAtPath  ~contents:(data : [`NSData] Objc.t ) ~attributes:(attr : [`NSDictionary] Objc.t ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "createFileAtPath" make_pointer_from_object
      ++ Objc.arg data "contents" make_pointer_from_object
      ++ Objc.arg attr "attributes" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method pathContentOfSymbolicLinkAtPath (path : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pathContentOfSymbolicLinkAtPath:")
      [make_pointer_from_object path]) : [`NSString] Objc.id))
  method createSymbolicLinkAtPath  ~pathContent:(otherpath : [`NSString] Objc.t ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "createSymbolicLinkAtPath" make_pointer_from_object
      ++ Objc.arg otherpath "pathContent" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method fileSystemAttributesAtPath (path : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileSystemAttributesAtPath:")
      [make_pointer_from_object path]) : [`NSDictionary] Objc.id))
  method fileSystemRepresentationWithPath (path : [`NSString] Objc.t) =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "fileSystemRepresentationWithPath:")
      [make_pointer_from_object path]) : string)
  method stringWithFileSystemRepresentation  ~length:(len : int ) (str : string) =
    let sel, args = (
      Objc.arg str "stringWithFileSystemRepresentation" make_string
      ++ Objc.arg len "length" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method componentsToDisplayForPath (path : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "componentsToDisplayForPath:")
      [make_pointer_from_object path]) : [`NSArray] Objc.id))
end
