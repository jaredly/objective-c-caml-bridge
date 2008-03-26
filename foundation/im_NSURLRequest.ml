(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLRequest *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithURL (_URL : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithURL:")
      [make_pointer_from_object _URL]) : [`NSObject] Objc.id)
  method initWithURL_cachePolicy_timeoutInterval  (_URL : [`NSURL] Objc.t) (cachePolicy : int) (timeoutInterval : float) =
    let sel, args = (
      Objc.arg _URL "initWithURL" make_pointer_from_object
      ++ Objc.arg cachePolicy "cachePolicy" make_int
      ++ Objc.arg timeoutInterval "timeoutInterval" make_float
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method url =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "URL")[])
       : [`NSURL] Objc.id))
  method cachePolicy =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "cachePolicy")[])
       : int)
  method timeoutInterval =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "timeoutInterval")[])
       : float)
  method mainDocumentURL =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mainDocumentURL")[])
       : [`NSURL] Objc.id))
end
