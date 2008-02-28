(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSImage] id) -> object
  inherit Cati_NSWindowsExtensions.methods_NSImage
  inherit Im_NSImage.methods
  method repr = r
end

(* Class object for NSImage *)
let c = Classes.find "NSImage"
let _new()= (Objc.objcnew c : [`NSImage] id)
let alloc() = (Objc.objcalloc c : [`NSImage] id)
(* class methods for category NSWindowsExtensions of NSImage *)
let imageNamed (name : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageNamed:")
      [make_pointer_from_object name]) : [`NSImage] Objc.id))
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
