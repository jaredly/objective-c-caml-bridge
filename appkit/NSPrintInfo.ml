(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPrintInfo.methods
end

class t = fun (r :[`NSPrintInfo] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPrintInfo *)
let c = Classes.find "NSPrintInfo"
let _new()= (Objc.objcnew c : [`NSPrintInfo] id)
let alloc() = (Objc.objcalloc c : [`NSPrintInfo] id)
let setSharedPrintInfo (printInfo : [`NSPrintInfo] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setSharedPrintInfo:")
      [make_pointer_from_object printInfo]) : unit)
let sharedPrintInfo () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedPrintInfo")[])
       : [`NSPrintInfo] Objc.id))
let defaultPrinter () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultPrinter")[])
       : [`NSPrinter] Objc.id))
let setDefaultPrinter (printer : [`NSPrinter] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setDefaultPrinter:")
      [make_pointer_from_object printer]) : unit)
let sizeForPaperName (name : [`NSString] Objc.t) =
    (get_size (Objc.invoke Objc.tag_nssize c (Selector.find "sizeForPaperName:")
      [make_pointer_from_object name]) : NSSize.t)
