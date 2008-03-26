(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSScripting.methods_NSDocument
  inherit Im_NSDocument.methods
end

class t = fun (r :[`NSDocument] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDocument *)
let c = Classes.find "NSDocument"
let _new()= (Objc.objcnew c : [`NSDocument] id)
let alloc() = (Objc.objcalloc c : [`NSDocument] id)
(* class methods for category NSScripting of NSDocument *)
let readableTypes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "readableTypes")[])
       : [`NSArray] Objc.id))
let writableTypes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "writableTypes")[])
       : [`NSArray] Objc.id))
let isNativeType (_type : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "isNativeType:")
      [make_pointer_from_object _type]) : bool)
