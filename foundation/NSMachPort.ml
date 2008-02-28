(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMachPort] id) -> object
  inherit Im_NSMachPort.methods
  method repr = r
end

(* Class object for NSMachPort *)
let c = Classes.find "NSMachPort"
let _new()= (Objc.objcnew c : [`NSMachPort] id)
let alloc() = (Objc.objcalloc c : [`NSMachPort] id)
let portWithMachPort (machPort : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "portWithMachPort:")
      [make_int machPort]) : [`NSPort] Objc.id))
