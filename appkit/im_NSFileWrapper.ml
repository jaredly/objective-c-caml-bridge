(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFileWrapper *)
class virtual methods = object (self)
  method virtual repr : [`NSFileWrapper] Objc.id
  method initDirectoryWithFileWrappers (docs : [`NSDictionary] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initDirectoryWithFileWrappers:")
      [make_pointer_from_object docs]) : [`NSObject] Objc.id)
  method initRegularFileWithContents (data : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initRegularFileWithContents:")
      [make_pointer_from_object data]) : [`NSObject] Objc.id)
  method initSymbolicLinkWithDestination (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initSymbolicLinkWithDestination:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method initWithPath (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithPath:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method initWithSerializedRepresentation (data : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithSerializedRepresentation:")
      [make_pointer_from_object data]) : [`NSObject] Objc.id)
  method writeToFile  ~atomically:(atomicFlag : bool ) ~updateFilenames:(updateFilenamesFlag : bool ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "writeToFile" make_pointer_from_object
      ++ Objc.arg atomicFlag "atomically" make_bool
      ++ Objc.arg updateFilenamesFlag "updateFilenames" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method serializedRepresentation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "serializedRepresentation")[])
       : [`NSData] Objc.id))
  method setFilename (filename : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFilename:")
      [make_pointer_from_object filename]) : unit)
  method filename =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "filename")[])
       : [`NSString] Objc.id))
  method setPreferredFilename (filename : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPreferredFilename:")
      [make_pointer_from_object filename]) : unit)
  method preferredFilename =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "preferredFilename")[])
       : [`NSString] Objc.id))
  method setFileAttributes (attributes : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFileAttributes:")
      [make_pointer_from_object attributes]) : unit)
  method fileAttributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileAttributes")[])
       : [`NSDictionary] Objc.id))
  method isRegularFile =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isRegularFile")[])
       : bool)
  method isDirectory =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isDirectory")[])
       : bool)
  method isSymbolicLink =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSymbolicLink")[])
       : bool)
  method setIcon (icon : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIcon:")
      [make_pointer_from_object icon]) : unit)
  method icon =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "icon")[])
       : [`NSImage] Objc.id))
  method needsToBeUpdatedFromPath (path : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "needsToBeUpdatedFromPath:")
      [make_pointer_from_object path]) : bool)
  method updateFromPath (path : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "updateFromPath:")
      [make_pointer_from_object path]) : bool)
  method addFileWrapper (doc : [`NSFileWrapper] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "addFileWrapper:")
      [make_pointer_from_object doc]) : [`NSString] Objc.id))
  method removeFileWrapper (doc : [`NSFileWrapper] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeFileWrapper:")
      [make_pointer_from_object doc]) : unit)
  method fileWrappers =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileWrappers")[])
       : [`NSDictionary] Objc.id))
  method keyForFileWrapper (doc : [`NSFileWrapper] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyForFileWrapper:")
      [make_pointer_from_object doc]) : [`NSString] Objc.id))
  method addFileWithPath (path : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "addFileWithPath:")
      [make_pointer_from_object path]) : [`NSString] Objc.id))
  method addRegularFileWithContents  ~preferredFilename:(filename : [`NSString] Objc.t ) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg data "addRegularFileWithContents" make_pointer_from_object
      ++ Objc.arg filename "preferredFilename" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method addSymbolicLinkWithDestination  ~preferredFilename:(filename : [`NSString] Objc.t ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "addSymbolicLinkWithDestination" make_pointer_from_object
      ++ Objc.arg filename "preferredFilename" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method regularFileContents =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "regularFileContents")[])
       : [`NSData] Objc.id))
  method symbolicLinkDestination =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "symbolicLinkDestination")[])
       : [`NSString] Objc.id))
end
