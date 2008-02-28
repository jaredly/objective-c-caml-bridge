(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLRequest *)
class virtual methods = object (self)
  method virtual repr : [`NSURLRequest] Objc.id
  (* skipping selector initWithURL *)
  method initWithURL  ?cachePolicy:(cachePolicy : int option) ?timeoutInterval:(timeoutInterval : float option) (_URL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg _URL "initWithURL" make_pointer_from_object
      ++ Objc.opt_arg cachePolicy "cachePolicy" make_int
      ++ Objc.opt_arg timeoutInterval "timeoutInterval" make_float
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method l_URL =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_URL")[])
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
