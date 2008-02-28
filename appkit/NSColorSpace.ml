(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSColorSpace] id) -> object
  inherit Im_NSColorSpace.methods
  method repr = r
end

(* Class object for NSColorSpace *)
let c = Classes.find "NSColorSpace"
let _new()= (Objc.objcnew c : [`NSColorSpace] id)
let alloc() = (Objc.objcalloc c : [`NSColorSpace] id)
let genericRGBColorSpace () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "genericRGBColorSpace")[])
       : [`NSColorSpace] Objc.id))
let genericGrayColorSpace () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "genericGrayColorSpace")[])
       : [`NSColorSpace] Objc.id))
let genericCMYKColorSpace () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "genericCMYKColorSpace")[])
       : [`NSColorSpace] Objc.id))
let deviceRGBColorSpace () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "deviceRGBColorSpace")[])
       : [`NSColorSpace] Objc.id))
let deviceGrayColorSpace () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "deviceGrayColorSpace")[])
       : [`NSColorSpace] Objc.id))
let deviceCMYKColorSpace () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "deviceCMYKColorSpace")[])
       : [`NSColorSpace] Objc.id))
