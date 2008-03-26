(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPortCoder.methods
end

class t = fun (r :[`NSPortCoder] id) -> object
  inherit methods
  inherit NSCoder.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPortCoder *)
let c = Classes.find "NSPortCoder"
let _new()= (Objc.objcnew c : [`NSPortCoder] id)
let alloc() = (Objc.objcalloc c : [`NSPortCoder] id)
let portCoderWithReceivePort_sendPort_components  (rcvPort : [`NSPort] Objc.t) (sndPort : [`NSPort] Objc.t) (comps : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg rcvPort "portCoderWithReceivePort" make_pointer_from_object
      ++ Objc.arg sndPort "sendPort" make_pointer_from_object
      ++ Objc.arg comps "components" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPortCoder] Objc.id))
