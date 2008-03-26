(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSURLClient of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method url_resourceDataDidBecomeAvailable  (sender : [`NSURL] Objc.t) (newBytes : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg sender "URL" make_pointer_from_object
      ++ Objc.arg newBytes "resourceDataDidBecomeAvailable" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method urlResourceDidFinishLoading (sender : [`NSURL] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "URLResourceDidFinishLoading:")
      [make_pointer_from_object sender]) : unit)
  method urlResourceDidCancelLoading (sender : [`NSURL] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "URLResourceDidCancelLoading:")
      [make_pointer_from_object sender]) : unit)
  method url_resourceDidFailLoadingWithReason  (sender : [`NSURL] Objc.t) (reason : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg sender "URL" make_pointer_from_object
      ++ Objc.arg reason "resourceDidFailLoadingWithReason" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
