(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPrinter] id) -> object
  inherit Im_NSPrinter.methods
  method repr = r
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
  (* skipping selector printerWithName *)
let printerWithType (_type : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "printerWithType:")
      [make_pointer_from_object _type]) : [`NSPrinter] Objc.id))
let printerWithName  ?domain:(domain : [`NSString] Objc.t option) ?includeUnavailable:(flag : bool option) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "printerWithName" make_pointer_from_object
      ++ Objc.opt_arg domain "domain" make_pointer_from_object
      ++ Objc.opt_arg flag "includeUnavailable" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPrinter] Objc.id))
