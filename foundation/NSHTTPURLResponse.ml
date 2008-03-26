(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSHTTPURLResponse.methods
end

class t = fun (r :[`NSHTTPURLResponse] id) -> object
  inherit methods
  inherit NSURLResponse.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSHTTPURLResponse *)
let c = Classes.find "NSHTTPURLResponse"
let _new()= (Objc.objcnew c : [`NSHTTPURLResponse] id)
let alloc() = (Objc.objcalloc c : [`NSHTTPURLResponse] id)
let localizedStringForStatusCode (statusCode : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "localizedStringForStatusCode:")
      [make_int statusCode]) : [`NSString] Objc.id))
