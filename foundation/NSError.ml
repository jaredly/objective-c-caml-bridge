(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSError.methods
end

class t = fun (r :[`NSError] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSError *)
let c = Classes.find "NSError"
let _new()= (Objc.objcnew c : [`NSError] id)
let alloc() = (Objc.objcalloc c : [`NSError] id)
let errorWithDomain_code_userInfo  (domain : [`NSString] Objc.t) (code : int) (dict : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg domain "errorWithDomain" make_pointer_from_object
      ++ Objc.arg code "code" make_int
      ++ Objc.arg dict "userInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSError] Objc.id))
