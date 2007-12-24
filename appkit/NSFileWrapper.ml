(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSFileWrapper"
let _ = init()
let make_NSObject_of_NSFileWrapper (o : [`NSFileWrapper] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSFileWrapper *)
let class_NSFileWrapper = object
   val repr = Classes.find "NSFileWrapper"
   method _new = (Objc.objcnew repr : [`NSFileWrapper] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSFileWrapper] nativeNSObject)
end
(* Encapsulation for native instance of NSFileWrapper *)
class native_NSFileWrapper = fun (o : [`NSFileWrapper] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSFileWrapper o) as super
   method initDirectoryWithFileWrappers (docs : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initDirectoryWithFileWrappers:")[make_pointer_from_object docs]) : [`NSObject] Objc.nativeNSObject)
   method initRegularFileWithContents (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initRegularFileWithContents:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
   method initSymbolicLinkWithDestination (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initSymbolicLinkWithDestination:")[make_pointer_from_object path]) : [`NSObject] Objc.nativeNSObject)
   method initWithPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithPath:")[make_pointer_from_object path]) : [`NSObject] Objc.nativeNSObject)
   method initWithSerializedRepresentation (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithSerializedRepresentation:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
   method writeToFile  ~atomically:(atomicFlag : bool ) ~updateFilenames:(updateFilenamesFlag : bool ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "writeToFile" make_pointer_from_object
       ++ Objc.arg atomicFlag "atomically" make_bool
       ++ Objc.arg updateFilenamesFlag "updateFilenames" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method serializedRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "serializedRepresentation:")[]) : [`NSData] Objc.nativeNSObject)
   method setFilename (filename : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFilename:")[make_pointer_from_object filename]) : unit)
   method filename =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "filename:")[]) : [`NSString] Objc.nativeNSObject)
   method setPreferredFilename (filename : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPreferredFilename:")[make_pointer_from_object filename]) : unit)
   method preferredFilename =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "preferredFilename:")[]) : [`NSString] Objc.nativeNSObject)
   method setFileAttributes (attributes : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFileAttributes:")[make_pointer_from_object attributes]) : unit)
   method fileAttributes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileAttributes:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method isRegularFile =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isRegularFile:")[]) : bool)
   method isDirectory =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isDirectory:")[]) : bool)
   method isSymbolicLink =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isSymbolicLink:")[]) : bool)
   method setIcon (icon : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIcon:")[make_pointer_from_object icon]) : unit)
   method icon =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "icon:")[]) : [`NSImage] Objc.nativeNSObject)
   method needsToBeUpdatedFromPath (path : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "needsToBeUpdatedFromPath:")[make_pointer_from_object path]) : bool)
   method updateFromPath (path : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "updateFromPath:")[make_pointer_from_object path]) : bool)
   method addFileWrapper (doc : [`NSFileWrapper] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "addFileWrapper:")[make_pointer_from_object doc]) : [`NSString] Objc.nativeNSObject)
   method removeFileWrapper (doc : [`NSFileWrapper] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeFileWrapper:")[make_pointer_from_object doc]) : unit)
   method fileWrappers =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileWrappers:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method keyForFileWrapper (doc : [`NSFileWrapper] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "keyForFileWrapper:")[make_pointer_from_object doc]) : [`NSString] Objc.nativeNSObject)
   method addFileWithPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "addFileWithPath:")[make_pointer_from_object path]) : [`NSString] Objc.nativeNSObject)
   method addRegularFileWithContents  ~preferredFilename:(filename : [`NSString] Objc.t ) (data : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg data "addRegularFileWithContents" make_pointer_from_object
       ++ Objc.arg filename "preferredFilename" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method addSymbolicLinkWithDestination  ~preferredFilename:(filename : [`NSString] Objc.t ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "addSymbolicLinkWithDestination" make_pointer_from_object
       ++ Objc.arg filename "preferredFilename" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method regularFileContents =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "regularFileContents:")[]) : [`NSData] Objc.nativeNSObject)
   method symbolicLinkDestination =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "symbolicLinkDestination:")[]) : [`NSString] Objc.nativeNSObject)
end
