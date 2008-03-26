(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSExtendedScanner.methods_NSScanner
  inherit Im_NSScanner.methods
  inherit Foundation_cati_NSDecimalNumberScanning.methods_NSScanner
end

class t = fun (r :[`NSScanner] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
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
(* class methods for category NSDecimalNumberScanning of NSScanner *)
