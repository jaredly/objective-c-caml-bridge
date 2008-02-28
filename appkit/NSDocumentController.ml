(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSDocumentController] id) -> object
  inherit Cati_NSDeprecated.methods_NSDocumentController
  inherit Im_NSDocumentController.methods
  method repr = r
end

(* Class object for NSDocumentController *)
let c = Classes.find "NSDocumentController"
let _new()= (Objc.objcnew c : [`NSDocumentController] id)
let alloc() = (Objc.objcalloc c : [`NSDocumentController] id)
(* class methods for category NSDeprecated of NSDocumentController *)
let sharedDocumentController () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedDocumentController")[])
       : [`NSDocumentController] Objc.id))
