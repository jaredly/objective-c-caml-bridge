(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSFileHandle] id) -> object
  inherit Cati_NSFileHandlePlatformSpecific.methods_NSFileHandle
  inherit Cati_NSFileHandleAsynchronousAccess.methods_NSFileHandle
  inherit Cati_NSFileHandleCreation.methods_NSFileHandle
  inherit Im_NSFileHandle.methods
  method repr = r
end

(* Class object for NSFileHandle *)
let c = Classes.find "NSFileHandle"
let _new()= (Objc.objcnew c : [`NSFileHandle] id)
let alloc() = (Objc.objcalloc c : [`NSFileHandle] id)
(* class methods for category NSFileHandlePlatformSpecific of NSFileHandle *)
(* class methods for category NSFileHandleAsynchronousAccess of NSFileHandle *)
(* class methods for category NSFileHandleCreation of NSFileHandle *)
let fileHandleWithStandardInput () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "fileHandleWithStandardInput")[])
       : [`NSFileHandle] Objc.id))
let fileHandleWithStandardOutput () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "fileHandleWithStandardOutput")[])
       : [`NSFileHandle] Objc.id))
let fileHandleWithStandardError () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "fileHandleWithStandardError")[])
       : [`NSFileHandle] Objc.id))
let fileHandleWithNullDevice () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "fileHandleWithNullDevice")[])
       : [`NSFileHandle] Objc.id))
let fileHandleForReadingAtPath (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "fileHandleForReadingAtPath:")
      [make_pointer_from_object path]) : [`NSFileHandle] Objc.id))
let fileHandleForWritingAtPath (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "fileHandleForWritingAtPath:")
      [make_pointer_from_object path]) : [`NSFileHandle] Objc.id))
let fileHandleForUpdatingAtPath (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "fileHandleForUpdatingAtPath:")
      [make_pointer_from_object path]) : [`NSFileHandle] Objc.id))
