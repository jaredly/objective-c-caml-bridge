(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMovie] id) -> object
  inherit Im_NSMovie.methods
  method repr = r
end

(* Class object for NSMovie *)
let c = Classes.find "NSMovie"
let _new()= (Objc.objcnew c : [`NSMovie] id)
let alloc() = (Objc.objcalloc c : [`NSMovie] id)
let movieUnfilteredFileTypes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "movieUnfilteredFileTypes")[])
       : [`NSArray] Objc.id))
let movieUnfilteredPasteboardTypes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "movieUnfilteredPasteboardTypes")[])
       : [`NSArray] Objc.id))
let canInitWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "canInitWithPasteboard:")
      [make_pointer_from_object pasteboard]) : bool)
