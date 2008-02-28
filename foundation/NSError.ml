(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSError] id) -> object
  inherit Im_NSError.methods
  method repr = r
end

(* Class object for NSError *)
let c = Classes.find "NSError"
let _new()= (Objc.objcnew c : [`NSError] id)
let alloc() = (Objc.objcalloc c : [`NSError] id)
let errorWithDomain  ~code:(code : int ) ~userInfo:(dict : [`NSDictionary] Objc.t ) (domain : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg domain "errorWithDomain" make_pointer_from_object
      ++ Objc.arg code "code" make_int
      ++ Objc.arg dict "userInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSError] Objc.id))
