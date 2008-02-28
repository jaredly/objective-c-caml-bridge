(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSImageRepMatchesDevice = 0L


class t = fun (r :[`NSImageRep] id) -> object
  inherit Im_NSImageRep.methods
  method repr = r
end

(* Class object for NSImageRep *)
let c = Classes.find "NSImageRep"
let _new()= (Objc.objcnew c : [`NSImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSImageRep] id)
let registerImageRepClass (imageRepClass : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "registerImageRepClass:")
      [make_pointer_from_object imageRepClass]) : unit)
let unregisterImageRepClass (imageRepClass : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "unregisterImageRepClass:")
      [make_pointer_from_object imageRepClass]) : unit)
let registeredImageRepClasses () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "registeredImageRepClasses")[])
       : [`NSArray] Objc.id))
let imageRepClassForFileType (_type : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepClassForFileType:")
      [make_pointer_from_object _type]) : [`NSImageRep] Objc.id))
let imageRepClassForPasteboardType (_type : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepClassForPasteboardType:")
      [make_pointer_from_object _type]) : [`NSImageRep] Objc.id))
let imageRepClassForData (data : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepClassForData:")
      [make_pointer_from_object data]) : [`NSImageRep] Objc.id))
let canInitWithData (data : [`NSData] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "canInitWithData:")
      [make_pointer_from_object data]) : bool)
let imageUnfilteredFileTypes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageUnfilteredFileTypes")[])
       : [`NSArray] Objc.id))
let imageUnfilteredPasteboardTypes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageUnfilteredPasteboardTypes")[])
       : [`NSArray] Objc.id))
let imageFileTypes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageFileTypes")[])
       : [`NSArray] Objc.id))
let imagePasteboardTypes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imagePasteboardTypes")[])
       : [`NSArray] Objc.id))
let canInitWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "canInitWithPasteboard:")
      [make_pointer_from_object pasteboard]) : bool)
let imageRepsWithContentsOfFile (filename : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepsWithContentsOfFile:")
      [make_pointer_from_object filename]) : [`NSArray] Objc.id))
let imageRepWithContentsOfFile (filename : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepWithContentsOfFile:")
      [make_pointer_from_object filename]) : [`NSImageRep] Objc.id))
let imageRepsWithContentsOfURL (url : [`NSURL] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepsWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSArray] Objc.id))
let imageRepWithContentsOfURL (url : [`NSURL] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSImageRep] Objc.id))
let imageRepsWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepsWithPasteboard:")
      [make_pointer_from_object pasteboard]) : [`NSArray] Objc.id))
let imageRepWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepWithPasteboard:")
      [make_pointer_from_object pasteboard]) : [`NSImageRep] Objc.id))
