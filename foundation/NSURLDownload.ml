(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSURLDownload.methods
end

class t = fun (r :[`NSURLDownload] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSURLDownload *)
let c = Classes.find "NSURLDownload"
let _new()= (Objc.objcnew c : [`NSURLDownload] id)
let alloc() = (Objc.objcalloc c : [`NSURLDownload] id)
let canResumeDownloadDecodedWithEncodingMIMEType (_MIMEType : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "canResumeDownloadDecodedWithEncodingMIMEType:")
      [make_pointer_from_object _MIMEType]) : bool)
