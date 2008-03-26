(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSFileAttributes of NSDictionary *)
class virtual methods_NSDictionary = object (self)
  method virtual repr : [`NSObject] Objc.id
  method fileSize =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "fileSize")[])
       : int64)
  method fileModificationDate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileModificationDate")[])
       : [`NSDate] Objc.id))
  method fileType =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileType")[])
       : [`NSString] Objc.id))
  method filePosixPermissions =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "filePosixPermissions")[])
       : int64)
  method fileOwnerAccountName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileOwnerAccountName")[])
       : [`NSString] Objc.id))
  method fileGroupOwnerAccountName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileGroupOwnerAccountName")[])
       : [`NSString] Objc.id))
  method fileSystemNumber =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "fileSystemNumber")[])
       : int64)
  method fileSystemFileNumber =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "fileSystemFileNumber")[])
       : int64)
  method fileExtensionHidden =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "fileExtensionHidden")[])
       : bool)
  method fileHFSCreatorCode =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "fileHFSCreatorCode")[])
       : int64)
  method fileHFSTypeCode =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "fileHFSTypeCode")[])
       : int64)
  method fileIsImmutable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "fileIsImmutable")[])
       : bool)
  method fileIsAppendOnly =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "fileIsAppendOnly")[])
       : bool)
  method fileCreationDate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileCreationDate")[])
       : [`NSDate] Objc.id))
  method fileOwnerAccountID =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileOwnerAccountID")[])
       : [`NSNumber] Objc.id))
  method fileGroupOwnerAccountID =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fileGroupOwnerAccountID")[])
       : [`NSNumber] Objc.id))
end
