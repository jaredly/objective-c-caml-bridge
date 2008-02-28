(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPersistentDocument *)
class virtual methods = object (self)
  method virtual repr : [`NSPersistentDocument] Objc.id
  method managedObjectContext =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "managedObjectContext")[])
       : [`NSManagedObjectContext] Objc.id))
  method setManagedObjectContext (managedObjectContext : [`NSManagedObjectContext] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setManagedObjectContext:")
      [make_pointer_from_object managedObjectContext]) : unit)
  method managedObjectModel =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "managedObjectModel")[])
       : [`NSObject] Objc.id)
  method configurePersistentStoreCoordinatorForURL  ~ofType:(fileType : [`NSString] Objc.t ) ~error:(error : bool ) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "configurePersistentStoreCoordinatorForURL" make_pointer_from_object
      ++ Objc.arg fileType "ofType" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method persistentStoreTypeForFileType (fileType : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "persistentStoreTypeForFileType:")
      [make_pointer_from_object fileType]) : [`NSString] Objc.id))
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method writeToURL  ~ofType:(typeName : [`NSString] Objc.t ) ~forSaveOperation:(saveOperation : int ) ~originalContentsURL:(absoluteOriginalContentsURL : [`NSURL] Objc.t ) ~error:(error : bool ) (absoluteURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg absoluteURL "writeToURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg saveOperation "forSaveOperation" make_int
      ++ Objc.arg absoluteOriginalContentsURL "originalContentsURL" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method readFromURL  ~ofType:(typeName : [`NSString] Objc.t ) ~error:(error : bool ) (absoluteURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg absoluteURL "readFromURL" make_pointer_from_object
      ++ Objc.arg typeName "ofType" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method revertToContentsOfURL  ~ofType:(inTypeName : [`NSString] Objc.t ) ~error:(outError : bool ) (inAbsoluteURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg inAbsoluteURL "revertToContentsOfURL" make_pointer_from_object
      ++ Objc.arg inTypeName "ofType" make_pointer_from_object
      ++ Objc.arg outError "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
