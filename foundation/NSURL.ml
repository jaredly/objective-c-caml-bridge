(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSURL] id) -> object
  inherit Cati_NSURLLoading.methods_NSURL
  inherit Im_NSURL.methods
  method repr = r
end

(* Class object for NSURL *)
let c = Classes.find "NSURL"
let _new()= (Objc.objcnew c : [`NSURL] id)
let alloc() = (Objc.objcalloc c : [`NSURL] id)
(* class methods for category NSURLLoading of NSURL *)
let fileURLWithPath (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "fileURLWithPath:")
      [make_pointer_from_object path]) : [`NSURL] Objc.id))
  (* skipping selector l_URLWithString *)
let l_URLWithString  ?relativeToURL:(baseURL : [`NSURL] Objc.t option) (_URLString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _URLString "l_URLWithString" make_pointer_from_object
      ++ Objc.opt_arg baseURL "relativeToURL" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSURL] Objc.id))
