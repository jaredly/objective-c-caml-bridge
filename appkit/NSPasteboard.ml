(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPasteboard] id) -> object
  inherit Cati_NSFileContents.methods_NSPasteboard
  inherit Im_NSPasteboard.methods
  method repr = r
end

(* Class object for NSPasteboard *)
let c = Classes.find "NSPasteboard"
let _new()= (Objc.objcnew c : [`NSPasteboard] id)
let alloc() = (Objc.objcalloc c : [`NSPasteboard] id)
(* class methods for category NSFileContents of NSPasteboard *)
let generalPasteboard () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "generalPasteboard")[])
       : [`NSPasteboard] Objc.id))
let pasteboardWithName (name : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "pasteboardWithName:")
      [make_pointer_from_object name]) : [`NSPasteboard] Objc.id))
let pasteboardWithUniqueName () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "pasteboardWithUniqueName")[])
       : [`NSPasteboard] Objc.id))
let typesFilterableTo (_type : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "typesFilterableTo:")
      [make_pointer_from_object _type]) : [`NSArray] Objc.id))
let pasteboardByFilteringFile (filename : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "pasteboardByFilteringFile:")
      [make_pointer_from_object filename]) : [`NSPasteboard] Objc.id))
let pasteboardByFilteringData  ~ofType:(_type : [`NSString] Objc.t ) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg data "pasteboardByFilteringData" make_pointer_from_object
      ++ Objc.arg _type "ofType" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPasteboard] Objc.id))
let pasteboardByFilteringTypesInPasteboard (pboard : [`NSPasteboard] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "pasteboardByFilteringTypesInPasteboard:")
      [make_pointer_from_object pboard]) : [`NSPasteboard] Objc.id))
