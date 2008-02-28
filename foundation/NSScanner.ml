(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSScanner] id) -> object
  inherit Cati_NSExtendedScanner.methods_NSScanner
  inherit Im_NSScanner.methods
  method repr = r
end

(* Class object for NSScanner *)
let c = Classes.find "NSScanner"
let _new()= (Objc.objcnew c : [`NSScanner] id)
let alloc() = (Objc.objcalloc c : [`NSScanner] id)
(* class methods for category NSExtendedScanner of NSScanner *)
let scannerWithString (string : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "scannerWithString:")
      [make_pointer_from_object string]) : [`NSScanner] Objc.id))
let localizedScannerWithString (string : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "localizedScannerWithString:")
      [make_pointer_from_object string]) : [`NSScanner] Objc.id))
