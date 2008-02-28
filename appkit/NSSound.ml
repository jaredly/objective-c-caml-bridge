(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSound] id) -> object
  inherit Im_NSSound.methods
  method repr = r
end

(* Class object for NSSound *)
let c = Classes.find "NSSound"
let _new()= (Objc.objcnew c : [`NSSound] id)
let alloc() = (Objc.objcalloc c : [`NSSound] id)
let soundNamed (name : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "soundNamed:")
      [make_pointer_from_object name]) : [`NSSound] Objc.id))
let canInitWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "canInitWithPasteboard:")
      [make_pointer_from_object pasteboard]) : bool)
let soundUnfilteredFileTypes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "soundUnfilteredFileTypes")[])
       : [`NSArray] Objc.id))
let soundUnfilteredPasteboardTypes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "soundUnfilteredPasteboardTypes")[])
       : [`NSArray] Objc.id))
