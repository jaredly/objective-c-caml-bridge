(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSCoder
open NSGeometry
open NSPropertyList


external init : unit -> unit = "caml_init_NSKeyedArchiver"
let _ = init()
let make_NSCoder_of_NSKeyedArchiver (o : [`NSKeyedArchiver] nativeNSObject) = (Obj.magic o : [`NSCoder] nativeNSObject)
(* Class object for NSKeyedArchiver *)
let class_NSKeyedArchiver = object
   val repr = Classes.find "NSKeyedArchiver"
   method _new = (Objc.objcnew repr : [`NSKeyedArchiver] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSKeyedArchiver] nativeNSObject)
   method archivedDataWithRootObject (rootObject : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "archivedDataWithRootObject:")[make_pointer_from_object rootObject]) : [`NSData] Objc.nativeNSObject)
   method archiveRootObject  ~toFile:(path : [`NSString] Objc.t ) (rootObject : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg rootObject "archiveRootObject" make_pointer_from_object
       ++ Objc.arg path "toFile" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSKeyedArchiver] Objc.nativeNSObject)
   method setClassName  ~forClass:(cls : [`NSObject] Objc.t ) (codedName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg codedName "setClassName" make_pointer_from_object
       ++ Objc.arg cls "forClass" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSKeyedArchiver] Objc.nativeNSObject)
   method classNameForClass (cls : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classNameForClass:")[make_pointer_from_object cls]) : [`NSString] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSKeyedArchiver *)
class native_NSKeyedArchiver = fun (o : [`NSKeyedArchiver] nativeNSObject) -> object (self)
   inherit native_NSCoder (make_NSCoder_of_NSKeyedArchiver o) as super
   method initForWritingWithMutableData (data : [`NSMutableData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initForWritingWithMutableData:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method setOutputFormat (format : (*NSPropertyListFormat*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setOutputFormat:")[(*NSPropertyListFormat*) unsupported format]) : unit)

*)
(*  UNSUPPORTED
   method outputFormat =
     ((*NSPropertyListFormat*) unsupported (Objc.invoke (*NSPropertyListFormat*) Objc.tag_unsupported repr (Selector.find "outputFormat:")[]) : (*NSPropertyListFormat*) unsupported)

*)
   method finishEncoding =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "finishEncoding:")[]) : unit)
   method setClassName  ~forClass:(cls : [`NSObject] Objc.t ) (codedName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg codedName "setClassName" make_pointer_from_object
       ++ Objc.arg cls "forClass" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method classNameForClass (cls : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classNameForClass:")[make_pointer_from_object cls]) : [`NSString] Objc.nativeNSObject)
   method encodeObject  ~forKey:(key : [`NSString] Objc.t ) (objv : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg objv "encodeObject" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method encodeConditionalObject  ~forKey:(key : [`NSString] Objc.t ) (objv : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg objv "encodeConditionalObject" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method encodeBool  ~forKey:(key : [`NSString] Objc.t ) (boolv : bool) =
     let sel, args = (
       Objc.arg boolv "encodeBool" make_bool
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method encodeInt  ~forKey:(key : [`NSString] Objc.t ) (intv : int) =
     let sel, args = (
       Objc.arg intv "encodeInt" make_int
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method encodeInt32  ~forKey:(key : [`NSString] Objc.t ) (intv : int64) =
     let sel, args = (
       Objc.arg intv "encodeInt32" make_int64
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method encodeInt64  ~forKey:(key : [`NSString] Objc.t ) (intv : int64) =
     let sel, args = (
       Objc.arg intv "encodeInt64" make_int64
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method encodeFloat  ~forKey:(key : [`NSString] Objc.t ) (realv : float) =
     let sel, args = (
       Objc.arg realv "encodeFloat" make_float
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method encodeDouble  ~forKey:(key : [`NSString] Objc.t ) (realv : float) =
     let sel, args = (
       Objc.arg realv "encodeDouble" make_float
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
(*  UNSUPPORTED
   method encodeBytes  ~length:(lenv : int ) ~forKey:(key : [`NSString] Objc.t ) (bytesp : (*pointer to const uint8_t*) unsupported) =
     let sel, args = (
       Objc.arg bytesp "encodeBytes" (*pointer to const uint8_t*) unsupported
       ++ Objc.arg lenv "length" make_int
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
end
let make_NSCoder_of_NSKeyedUnarchiver (o : [`NSKeyedUnarchiver] nativeNSObject) = (Obj.magic o : [`NSCoder] nativeNSObject)
(* Class object for NSKeyedUnarchiver *)
let class_NSKeyedUnarchiver = object
   val repr = Classes.find "NSKeyedUnarchiver"
   method _new = (Objc.objcnew repr : [`NSKeyedUnarchiver] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSKeyedUnarchiver] nativeNSObject)
   method unarchiveObjectWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "unarchiveObjectWithData:")[make_pointer_from_object data]) : [`NSKeyedUnarchiver] Objc.nativeNSObject)
   method unarchiveObjectWithFile (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "unarchiveObjectWithFile:")[make_pointer_from_object path]) : [`NSKeyedUnarchiver] Objc.nativeNSObject)
   method setClass  ~forClassName:(codedName : [`NSString] Objc.t ) (cls : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg cls "setClass" make_pointer_from_object
       ++ Objc.arg codedName "forClassName" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSKeyedUnarchiver] Objc.nativeNSObject)
   method classForClassName (codedName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classForClassName:")[make_pointer_from_object codedName]) : [`NSKeyedUnarchiver] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSKeyedUnarchiver *)
class native_NSKeyedUnarchiver = fun (o : [`NSKeyedUnarchiver] nativeNSObject) -> object (self)
   inherit native_NSCoder (make_NSCoder_of_NSKeyedUnarchiver o) as super
   method initForReadingWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initForReadingWithData:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method finishDecoding =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "finishDecoding:")[]) : unit)
   method setClass  ~forClassName:(codedName : [`NSString] Objc.t ) (cls : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg cls "setClass" make_pointer_from_object
       ++ Objc.arg codedName "forClassName" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method classForClassName (codedName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classForClassName:")[make_pointer_from_object codedName]) : [`NSObject] Objc.nativeNSObject)
   method containsValueForKey (key : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "containsValueForKey:")[make_pointer_from_object key]) : bool)
   method decodeObjectForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "decodeObjectForKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   method decodeBoolForKey (key : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "decodeBoolForKey:")[make_pointer_from_object key]) : bool)
   method decodeIntForKey (key : [`NSString] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "decodeIntForKey:")[make_pointer_from_object key]) : int)
   method decodeInt32ForKey (key : [`NSString] Objc.t) =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "decodeInt32ForKey:")[make_pointer_from_object key]) : int64)
   method decodeInt64ForKey (key : [`NSString] Objc.t) =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "decodeInt64ForKey:")[make_pointer_from_object key]) : int64)
   method decodeFloatForKey (key : [`NSString] Objc.t) =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "decodeFloatForKey:")[make_pointer_from_object key]) : float)
   method decodeDoubleForKey (key : [`NSString] Objc.t) =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "decodeDoubleForKey:")[make_pointer_from_object key]) : float)
(*  UNSUPPORTED
   method decodeBytesForKey  ~returnedLength:(lengthp : (*pointer to unsigned int*) unsupported ) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "decodeBytesForKey" make_pointer_from_object
       ++ Objc.arg lengthp "returnedLength" (*pointer to unsigned int*) unsupported
     ) ([],[]) in
       ((*pointer to const uint8_t*) unsupported (Objc.invoke (*pointer to const uint8_t*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*pointer to const uint8_t*) unsupported)

*)
end
(* Class object for NSCoder *)
let class_NSCoder = object
   val repr = Classes.find "NSCoder"
   method _new = (Objc.objcnew repr : [`NSCoder] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSCoder] nativeNSObject)
(* methods for category NSGeometryKeyedCoding *)
end
(* Encapsulation for native instance of NSCoder *)
class native_NSCoder = fun (o : [`NSCoder] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSGeometryKeyedCoding *)
(*  UNSUPPORTED
   method encodePoint  ~forKey:(key : [`NSString] Objc.t ) (point : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg point "encodePoint" (*NSPoint*) unsupported
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method encodeSize  ~forKey:(key : [`NSString] Objc.t ) (size : (*NSSize*) unsupported) =
     let sel, args = (
       Objc.arg size "encodeSize" (*NSSize*) unsupported
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method encodeRect  ~forKey:(key : [`NSString] Objc.t ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "encodeRect" (*NSRect*) unsupported
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method decodePointForKey (key : [`NSString] Objc.t) =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find "decodePointForKey:")[make_pointer_from_object key]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
   method decodeSizeForKey (key : [`NSString] Objc.t) =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "decodeSizeForKey:")[make_pointer_from_object key]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method decodeRectForKey (key : [`NSString] Objc.t) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "decodeRectForKey:")[make_pointer_from_object key]) : (*NSRect*) unsupported)

*)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSKeyedUnarchiverObjectSubstitution *)
   method classForKeyedUnarchiver =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classForKeyedUnarchiver:")[]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSKeyedArchiverObjectSubstitution *)
   method classFallbacksForKeyedArchiver =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classFallbacksForKeyedArchiver:")[]) : [`NSArray] Objc.nativeNSObject)
(* methods for category NSKeyedUnarchiverDelegate *)
(* methods for category NSKeyedArchiverDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSKeyedUnarchiverObjectSubstitution *)
(* methods for category NSKeyedArchiverObjectSubstitution *)
   method classForKeyedArchiver =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classForKeyedArchiver:")[]) : [`NSObject] Objc.nativeNSObject)
   method replacementObjectForKeyedArchiver (archiver : [`NSKeyedArchiver] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "replacementObjectForKeyedArchiver:")[make_pointer_from_object archiver]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSKeyedUnarchiverDelegate *)
   method unarchiver  ?cannotDecodeObjectOfClassName:(name : [`NSString] Objc.t option) ?originalClasses:(classNames : [`NSArray] Objc.t option) (unarchiver : [`NSKeyedUnarchiver] Objc.t) =
     let sel, args = (
       Objc.arg unarchiver "unarchiver" make_pointer_from_object
       ++ Objc.opt_arg name "cannotDecodeObjectOfClassName" make_pointer_from_object
       ++ Objc.opt_arg classNames "originalClasses" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector unarchiver:didDecodeObject *)
   (* skipping selector unarchiver:willReplaceObject:withObject *)
   method unarchiverWillFinish (unarchiver : [`NSKeyedUnarchiver] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "unarchiverWillFinish:")[make_pointer_from_object unarchiver]) : unit)
   method unarchiverDidFinish (unarchiver : [`NSKeyedUnarchiver] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "unarchiverDidFinish:")[make_pointer_from_object unarchiver]) : unit)
(* methods for category NSKeyedArchiverDelegate *)
   (* skipping selector archiver:willEncodeObject *)
   (* skipping selector archiver:didEncodeObject *)
   method archiver  ?willReplaceObject:(_object : [`NSObject] Objc.t option) ?withObject:(newObject : [`NSObject] Objc.t option) (archiver : [`NSKeyedArchiver] Objc.t) =
     let sel, args = (
       Objc.arg archiver "archiver" make_pointer_from_object
       ++ Objc.opt_arg _object "willReplaceObject" make_pointer_from_object
       ++ Objc.opt_arg newObject "withObject" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method archiverWillFinish (archiver : [`NSKeyedArchiver] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "archiverWillFinish:")[make_pointer_from_object archiver]) : unit)
   method archiverDidFinish (archiver : [`NSKeyedArchiver] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "archiverDidFinish:")[make_pointer_from_object archiver]) : unit)
end
