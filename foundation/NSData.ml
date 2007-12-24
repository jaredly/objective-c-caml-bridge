(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSRange


external init : unit -> unit = "caml_init_NSData"
let _ = init()
(* ENUMS *)
let _NSMappedRead = 1L
let _NSUncachedRead = 2L
let _NSAtomicWrite = 1L


let make_NSObject_of_NSData (o : [`NSData] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSData *)
let class_NSData = object
   val repr = Classes.find "NSData"
   method _new = (Objc.objcnew repr : [`NSData] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSData] nativeNSObject)
(* methods for category NSDataCreation *)
   method data =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "data:")[]) : [`NSData] Objc.nativeNSObject)
(*  UNSUPPORTED
   method dataWithBytes  ~length:(length : int ) (bytes : (*pointer to const void*) unsupported) =
     let sel, args = (
       Objc.arg bytes "dataWithBytes" (*pointer to const void*) unsupported
       ++ Objc.arg length "length" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)

*)
   (* skipping selector dataWithBytesNoCopy:length *)
   method dataWithBytesNoCopy  ~length:(length : int ) ?freeWhenDone:(b : bool option) (bytes : [`void] Objc.t) =
     let sel, args = (
       Objc.arg bytes "dataWithBytesNoCopy" make_pointer_from_object
       ++ Objc.arg length "length" make_int
       ++ Objc.opt_arg b "freeWhenDone" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)
   method dataWithContentsOfFile  ?options:(readOptionsMask : int option) ?error:(errorPtr : bool option) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "dataWithContentsOfFile" make_pointer_from_object
       ++ Objc.opt_arg readOptionsMask "options" make_int
       ++ Objc.opt_arg errorPtr "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)
   method dataWithContentsOfURL  ?options:(readOptionsMask : int option) ?error:(errorPtr : bool option) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "dataWithContentsOfURL" make_pointer_from_object
       ++ Objc.opt_arg readOptionsMask "options" make_int
       ++ Objc.opt_arg errorPtr "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)
   (* skipping selector dataWithContentsOfFile *)
   (* skipping selector dataWithContentsOfURL *)
   method dataWithContentsOfMappedFile (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dataWithContentsOfMappedFile:")[make_pointer_from_object path]) : [`NSData] Objc.nativeNSObject)
   method dataWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dataWithData:")[make_pointer_from_object data]) : [`NSData] Objc.nativeNSObject)
(* methods for category NSExtendedData *)
end
(* Encapsulation for native instance of NSData *)
class native_NSData = fun (o : [`NSData] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSData o) as super
(* methods for category NSDataCreation *)
(*  UNSUPPORTED
   method initWithBytes  ~length:(length : int ) (bytes : (*pointer to const void*) unsupported) =
     let sel, args = (
       Objc.arg bytes "initWithBytes" (*pointer to const void*) unsupported
       ++ Objc.arg length "length" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   (* skipping selector initWithBytesNoCopy:length *)
   method initWithBytesNoCopy  ~length:(length : int ) ?freeWhenDone:(b : bool option) (bytes : [`void] Objc.t) =
     let sel, args = (
       Objc.arg bytes "initWithBytesNoCopy" make_pointer_from_object
       ++ Objc.arg length "length" make_int
       ++ Objc.opt_arg b "freeWhenDone" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfFile  ?options:(readOptionsMask : int option) ?error:(errorPtr : bool option) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "initWithContentsOfFile" make_pointer_from_object
       ++ Objc.opt_arg readOptionsMask "options" make_int
       ++ Objc.opt_arg errorPtr "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfURL  ?options:(readOptionsMask : int option) ?error:(errorPtr : bool option) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "initWithContentsOfURL" make_pointer_from_object
       ++ Objc.opt_arg readOptionsMask "options" make_int
       ++ Objc.opt_arg errorPtr "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithContentsOfFile *)
   (* skipping selector initWithContentsOfURL *)
   method initWithContentsOfMappedFile (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithContentsOfMappedFile:")[make_pointer_from_object path]) : [`NSObject] Objc.nativeNSObject)
   method initWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithData:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedData *)
   method description =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "description:")[]) : [`NSString] Objc.nativeNSObject)
   (* skipping selector getBytes *)
   method getBytes  ?length:(length : int option) (buffer : [`void] Objc.t) =
     let sel, args = (
       Objc.arg buffer "getBytes" make_pointer_from_object
       ++ Objc.opt_arg length "length" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector getBytes:range *)
   method isEqualToData (other : [`NSData] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEqualToData:")[make_pointer_from_object other]) : bool)
   method subdataWithRange (range : int * int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "subdataWithRange:")[make_range range]) : [`NSData] Objc.nativeNSObject)
   (* skipping selector writeToFile:atomically *)
   (* skipping selector writeToURL:atomically *)
   method writeToFile  ~options:(writeOptionsMask : int ) ~error:(errorPtr : bool ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "writeToFile" make_pointer_from_object
       ++ Objc.arg writeOptionsMask "options" make_int
       ++ Objc.arg errorPtr "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method writeToURL  ~options:(writeOptionsMask : int ) ~error:(errorPtr : bool ) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "writeToURL" make_pointer_from_object
       ++ Objc.arg writeOptionsMask "options" make_int
       ++ Objc.arg errorPtr "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method length =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "length:")[]) : int)
(*  UNSUPPORTED
   method bytes =
     ((*pointer to const void*) unsupported (Objc.invoke (*pointer to const void*) Objc.tag_unsupported repr (Selector.find "bytes:")[]) : (*pointer to const void*) unsupported)

*)
end
let make_NSData_of_NSMutableData (o : [`NSMutableData] nativeNSObject) = (Obj.magic o : [`NSData] nativeNSObject)
(* Class object for NSMutableData *)
let class_NSMutableData = object
   val repr = Classes.find "NSMutableData"
   method _new = (Objc.objcnew repr : [`NSMutableData] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMutableData] nativeNSObject)
(* methods for category NSMutableDataCreation *)
   method dataWithCapacity (aNumItems : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dataWithCapacity:")[make_int aNumItems]) : [`NSMutableData] Objc.nativeNSObject)
   method dataWithLength (length : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dataWithLength:")[make_int length]) : [`NSMutableData] Objc.nativeNSObject)
(* methods for category NSExtendedMutableData *)
end
(* Encapsulation for native instance of NSMutableData *)
class native_NSMutableData = fun (o : [`NSMutableData] nativeNSObject) -> object (self)
   inherit native_NSData (make_NSData_of_NSMutableData o) as super
(* methods for category NSMutableDataCreation *)
   method initWithCapacity (capacity : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithCapacity:")[make_int capacity]) : [`NSObject] Objc.nativeNSObject)
   method initWithLength (length : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithLength:")[make_int length]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedMutableData *)
(*  UNSUPPORTED
   method appendBytes  ~length:(length : int ) (bytes : (*pointer to const void*) unsupported) =
     let sel, args = (
       Objc.arg bytes "appendBytes" (*pointer to const void*) unsupported
       ++ Objc.arg length "length" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method appendData (other : [`NSData] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "appendData:")[make_pointer_from_object other]) : unit)
   method increaseLengthBy (extraLength : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "increaseLengthBy:")[make_int extraLength]) : unit)
   (* skipping selector replaceBytesInRange:withBytes *)
   method resetBytesInRange (range : int * int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "resetBytesInRange:")[make_range range]) : unit)
   method setData (data : [`NSData] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setData:")[make_pointer_from_object data]) : unit)
(*  UNSUPPORTED
   method replaceBytesInRange  ~withBytes:(replacementBytes : (*pointer to const void*) unsupported ) ?length:(replacementLength : int option) (range : int * int) =
     let sel, args = (
       Objc.arg range "replaceBytesInRange" make_range
       ++ Objc.arg replacementBytes "withBytes" (*pointer to const void*) unsupported
       ++ Objc.opt_arg replacementLength "length" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method mutableBytes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "mutableBytes:")[]) : [`void] Objc.nativeNSObject)
   method setLength (length : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLength:")[make_int length]) : unit)
end
