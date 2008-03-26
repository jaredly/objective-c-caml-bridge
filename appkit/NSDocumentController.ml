(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSDocumentController.methods
end

class t = fun (r :[`NSDocumentController] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDocumentController *)
let c = Classes.find "NSDocumentController"
let _new()= (Objc.objcnew c : [`NSDocumentController] id)
let alloc() = (Objc.objcalloc c : [`NSDocumentController] id)
let sharedDocumentController () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedDocumentController")[])
       : [`NSDocumentController] Objc.id))
