(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSHTTPURLResponse] id) -> object
  inherit Im_NSHTTPURLResponse.methods
  method repr = r
end

(* Class object for NSHTTPURLResponse *)
let c = Classes.find "NSHTTPURLResponse"
let _new()= (Objc.objcnew c : [`NSHTTPURLResponse] id)
let alloc() = (Objc.objcalloc c : [`NSHTTPURLResponse] id)
let localizedStringForStatusCode (statusCode : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "localizedStringForStatusCode:")
      [make_int statusCode]) : [`NSString] Objc.id))
