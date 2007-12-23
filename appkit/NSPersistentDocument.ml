open Objc
open NSDocument


external init : unit -> unit = "caml_init_NSPersistentDocument"
let _ = init()
(* Class object for NSPersistentDocument *)
let class_NSPersistentDocument = object
   val o = Classes.find "NSPersistentDocument"
   method _new = (Objc.objcnew o : [`NSPersistentDocument] nativeNSObject)
end
(* Encapsulation for native instance of NSPersistentDocument *)
class native_NSPersistentDocument = fun (o : [`NSPersistentDocument] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method managedObjectContext =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "managedObjectContext:")[]) : [`NSManagedObjectContext] Objc.nativeNSObject)
   method setManagedObjectContext (managedObjectContext : [`NSManagedObjectContext] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setManagedObjectContext:")[make_pointer_from_object managedObjectContext]) : unit)
   method managedObjectModel =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "managedObjectModel:")[]) : [`NSObject] Objc.nativeNSObject)
   method configurePersistentStoreCoordinatorForURL  ~ofType:(fileType : [`NSString] Objc.t ) ~error:(error : bool ) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "configurePersistentStoreCoordinatorForURL" make_pointer_from_object
       ++ Objc.arg fileType "ofType" make_pointer_from_object
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method persistentStoreTypeForFileType (fileType : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "persistentStoreTypeForFileType:")[make_pointer_from_object fileType]) : [`NSString] Objc.nativeNSObject)
   method writeToURL  ~ofType:(typeName : [`NSString] Objc.t ) ~forSaveOperation:(saveOperation : int ) ~originalContentsURL:(absoluteOriginalContentsURL : [`NSURL] Objc.t ) ~error:(error : bool ) (absoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteURL "writeToURL" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.arg saveOperation "forSaveOperation" make_int
       ++ Objc.arg absoluteOriginalContentsURL "originalContentsURL" make_pointer_from_object
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method readFromURL  ~ofType:(typeName : [`NSString] Objc.t ) ~error:(error : bool ) (absoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg absoluteURL "readFromURL" make_pointer_from_object
       ++ Objc.arg typeName "ofType" make_pointer_from_object
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method revertToContentsOfURL  ~ofType:(inTypeName : [`NSString] Objc.t ) ~error:(outError : bool ) (inAbsoluteURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg inAbsoluteURL "revertToContentsOfURL" make_pointer_from_object
       ++ Objc.arg inTypeName "ofType" make_pointer_from_object
       ++ Objc.arg outError "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
end
