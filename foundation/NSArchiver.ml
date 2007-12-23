open Objc
open NSCoder


external init : unit -> unit = "caml_init_NSArchiver"
let _ = init()
(* Class object for NSUnarchiver *)
let class_NSUnarchiver = object
   val o = Classes.find "NSUnarchiver"
   method _new = (Objc.objcnew o : [`NSUnarchiver] nativeNSObject)
   method unarchiveObjectWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "unarchiveObjectWithData:")[make_pointer_from_object data]) : [`NSUnarchiver] Objc.nativeNSObject)
   method unarchiveObjectWithFile (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "unarchiveObjectWithFile:")[make_pointer_from_object path]) : [`NSUnarchiver] Objc.nativeNSObject)
   method decodeClassName  ~asClassName:(trueName : [`NSString] Objc.t ) (inArchiveName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg inArchiveName "decodeClassName" make_pointer_from_object
       ++ Objc.arg trueName "asClassName" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSUnarchiver] Objc.nativeNSObject)
   method classNameDecodedForArchiveClassName (inArchiveName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "classNameDecodedForArchiveClassName:")[make_pointer_from_object inArchiveName]) : [`NSString] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSUnarchiver *)
class native_NSUnarchiver = fun (o : [`NSUnarchiver] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initForReadingWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initForReadingWithData:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
   method setObjectZone (zone : [`NSZone] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setObjectZone:")[make_pointer_from_object zone]) : unit)
   method objectZone =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectZone:")[]) : [`NSZone] Objc.nativeNSObject)
   method isAtEnd =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isAtEnd:")[]) : bool)
   method systemVersion =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "systemVersion:")[]) : int)
   method decodeClassName  ~asClassName:(trueName : [`NSString] Objc.t ) (inArchiveName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg inArchiveName "decodeClassName" make_pointer_from_object
       ++ Objc.arg trueName "asClassName" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method classNameDecodedForArchiveClassName (inArchiveName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "classNameDecodedForArchiveClassName:")[make_pointer_from_object inArchiveName]) : [`NSString] Objc.nativeNSObject)
   method replaceObject  ~withObject:(newObject : [`NSObject] Objc.t ) (_object : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg _object "replaceObject" make_pointer_from_object
       ++ Objc.arg newObject "withObject" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSArchiverCallback *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSArchiverCallback *)
   method classForArchiver =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "classForArchiver:")[]) : [`NSObject] Objc.nativeNSObject)
   method replacementObjectForArchiver (archiver : [`NSArchiver] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "replacementObjectForArchiver:")[make_pointer_from_object archiver]) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSArchiver *)
let class_NSArchiver = object
   val o = Classes.find "NSArchiver"
   method _new = (Objc.objcnew o : [`NSArchiver] nativeNSObject)
   method archivedDataWithRootObject (rootObject : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "archivedDataWithRootObject:")[make_pointer_from_object rootObject]) : [`NSData] Objc.nativeNSObject)
   method archiveRootObject  ~toFile:(path : [`NSString] Objc.t ) (rootObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg rootObject "archiveRootObject" make_pointer_from_object
       ++ Objc.arg path "toFile" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSArchiver] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSArchiver *)
class native_NSArchiver = fun (o : [`NSArchiver] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initForWritingWithMutableData (mdata : [`NSMutableData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initForWritingWithMutableData:")[make_pointer_from_object mdata]) : [`NSObject] Objc.nativeNSObject)
   method archiverData =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "archiverData:")[]) : [`NSMutableData] Objc.nativeNSObject)
   method encodeRootObject (rootObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodeRootObject:")[make_pointer_from_object rootObject]) : unit)
   method encodeConditionalObject (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodeConditionalObject:")[make_pointer_from_object _object]) : unit)
   method encodeClassName  ~intoClassName:(inArchiveName : [`NSString] Objc.t ) (trueName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg trueName "encodeClassName" make_pointer_from_object
       ++ Objc.arg inArchiveName "intoClassName" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method classNameEncodedForTrueClassName (trueName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "classNameEncodedForTrueClassName:")[make_pointer_from_object trueName]) : [`NSString] Objc.nativeNSObject)
   method replaceObject  ~withObject:(newObject : [`NSObject] Objc.t ) (_object : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg _object "replaceObject" make_pointer_from_object
       ++ Objc.arg newObject "withObject" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
