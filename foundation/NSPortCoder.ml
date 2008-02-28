(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPortCoder] id) -> object
  inherit Im_NSPortCoder.methods
  method repr = r
end

(* Class object for NSPortCoder *)
let c = Classes.find "NSPortCoder"
let _new()= (Objc.objcnew c : [`NSPortCoder] id)
let alloc() = (Objc.objcalloc c : [`NSPortCoder] id)
let portCoderWithReceivePort  ~sendPort:(sndPort : [`NSPort] Objc.t ) ~components:(comps : [`NSArray] Objc.t ) (rcvPort : [`NSPort] Objc.t) =
    let sel, args = (
      Objc.arg rcvPort "portCoderWithReceivePort" make_pointer_from_object
      ++ Objc.arg sndPort "sendPort" make_pointer_from_object
      ++ Objc.arg comps "components" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPortCoder] Objc.id))
