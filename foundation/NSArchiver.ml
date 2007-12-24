(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSCoder


external init : unit -> unit = "caml_init_NSArchiver"
let _ = init()
let make_NSCoder_of_NSArchiver (o : [`NSArchiver] nativeNSObject) = (Obj.magic o : [`NSCoder] nativeNSObject)
(* Class object for NSArchiver *)
let class_NSArchiver = object
   val repr = Classes.find "NSArchiver"
   method _new = (Objc.objcnew repr : [`NSArchiver] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSArchiver] nativeNSObject)
   method archivedDataWithRootObject (rootObject : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "archivedDataWithRootObject:")[make_pointer_from_object rootObject]) : [`NSData] Objc.nativeNSObject)
   method archiveRootObject  ~toFile:(path : [`NSString] Objc.t ) (rootObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg rootObject "archiveRootObject" make_pointer_from_object
       ++ Objc.arg path "toFile" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSArchiver] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSArchiver *)
class native_NSArchiver = fun (o : [`NSArchiver] nativeNSObject) -> object (self)
   inherit native_NSCoder (make_NSCoder_of_NSArchiver o) as super
   method initForWritingWithMutableData (mdata : [`NSMutableData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initForWritingWithMutableData:")[make_pointer_from_object mdata]) : [`NSObject] Objc.nativeNSObject)
   method archiverData =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "archiverData:")[]) : [`NSMutableData] Objc.nativeNSObject)
   method encodeRootObject (rootObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "encodeRootObject:")[make_pointer_from_object rootObject]) : unit)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method encodeConditionalObject (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "encodeConditionalObject:")[make_pointer_from_object _object]) : unit)

*)
   method encodeClassName  ~intoClassName:(inArchiveName : [`NSString] Objc.t ) (trueName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg trueName "encodeClassName" make_pointer_from_object
       ++ Objc.arg inArchiveName "intoClassName" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method classNameEncodedForTrueClassName (trueName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classNameEncodedForTrueClassName:")[make_pointer_from_object trueName]) : [`NSString] Objc.nativeNSObject)
   method replaceObject  ~withObject:(newObject : [`NSObject] Objc.t ) (_object : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg _object "replaceObject" make_pointer_from_object
       ++ Objc.arg newObject "withObject" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
let make_NSCoder_of_NSUnarchiver (o : [`NSUnarchiver] nativeNSObject) = (Obj.magic o : [`NSCoder] nativeNSObject)
(* Class object for NSUnarchiver *)
let class_NSUnarchiver = object
   val repr = Classes.find "NSUnarchiver"
   method _new = (Objc.objcnew repr : [`NSUnarchiver] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSUnarchiver] nativeNSObject)
   method unarchiveObjectWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "unarchiveObjectWithData:")[make_pointer_from_object data]) : [`NSUnarchiver] Objc.nativeNSObject)
   method unarchiveObjectWithFile (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "unarchiveObjectWithFile:")[make_pointer_from_object path]) : [`NSUnarchiver] Objc.nativeNSObject)
   method decodeClassName  ~asClassName:(trueName : [`NSString] Objc.t ) (inArchiveName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg inArchiveName "decodeClassName" make_pointer_from_object
       ++ Objc.arg trueName "asClassName" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSUnarchiver] Objc.nativeNSObject)
   method classNameDecodedForArchiveClassName (inArchiveName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classNameDecodedForArchiveClassName:")[make_pointer_from_object inArchiveName]) : [`NSString] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSUnarchiver *)
class native_NSUnarchiver = fun (o : [`NSUnarchiver] nativeNSObject) -> object (self)
   inherit native_NSCoder (make_NSCoder_of_NSUnarchiver o) as super
   method initForReadingWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initForReadingWithData:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
   method setObjectZone (zone : [`NSZone] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setObjectZone:")[make_pointer_from_object zone]) : unit)
   method objectZone =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectZone:")[]) : [`NSZone] Objc.nativeNSObject)
   method isAtEnd =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isAtEnd:")[]) : bool)
   method systemVersion =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "systemVersion:")[]) : int)
   method decodeClassName  ~asClassName:(trueName : [`NSString] Objc.t ) (inArchiveName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg inArchiveName "decodeClassName" make_pointer_from_object
       ++ Objc.arg trueName "asClassName" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method classNameDecodedForArchiveClassName (inArchiveName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classNameDecodedForArchiveClassName:")[make_pointer_from_object inArchiveName]) : [`NSString] Objc.nativeNSObject)
   method replaceObject  ~withObject:(newObject : [`NSObject] Objc.t ) (_object : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg _object "replaceObject" make_pointer_from_object
       ++ Objc.arg newObject "withObject" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSArchiverCallback *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSArchiverCallback *)
   method classForArchiver =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classForArchiver:")[]) : [`NSObject] Objc.nativeNSObject)
   method replacementObjectForArchiver (archiver : [`NSArchiver] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "replacementObjectForArchiver:")[make_pointer_from_object archiver]) : [`NSObject] Objc.nativeNSObject)
end
