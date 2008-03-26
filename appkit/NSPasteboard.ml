(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSFileContents.methods_NSPasteboard
  inherit Im_NSPasteboard.methods
end

class t = fun (r :[`NSPasteboard] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
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
let pasteboardByFilteringData_ofType  (data : [`NSData] Objc.t) (_type : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg data "pasteboardByFilteringData" make_pointer_from_object
      ++ Objc.arg _type "ofType" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPasteboard] Objc.id))
let pasteboardByFilteringTypesInPasteboard (pboard : [`NSPasteboard] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "pasteboardByFilteringTypesInPasteboard:")
      [make_pointer_from_object pboard]) : [`NSPasteboard] Objc.id))
