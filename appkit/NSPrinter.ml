(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPrinter.methods
end

class t = fun (r :[`NSPrinter] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPrinter *)
let c = Classes.find "NSPrinter"
let _new()= (Objc.objcnew c : [`NSPrinter] id)
let alloc() = (Objc.objcalloc c : [`NSPrinter] id)
let printerNames () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "printerNames")[])
       : [`NSArray] Objc.id))
let printerTypes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "printerTypes")[])
       : [`NSArray] Objc.id))
let printerWithName (name : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "printerWithName:")
      [make_pointer_from_object name]) : [`NSPrinter] Objc.id))
let printerWithType (_type : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "printerWithType:")
      [make_pointer_from_object _type]) : [`NSPrinter] Objc.id))
let printerWithName_domain_includeUnavailable  (name : [`NSString] Objc.t) (domain : [`NSString] Objc.t) (flag : bool) =
    let sel, args = (
      Objc.arg name "printerWithName" make_pointer_from_object
      ++ Objc.arg domain "domain" make_pointer_from_object
      ++ Objc.arg flag "includeUnavailable" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrinter] Objc.id))
