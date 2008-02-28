(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTask] id) -> object
  inherit Cati_NSTaskConveniences.methods_NSTask
  inherit Im_NSTask.methods
  method repr = r
end

(* Class object for NSTask *)
let c = Classes.find "NSTask"
let _new()= (Objc.objcnew c : [`NSTask] id)
let alloc() = (Objc.objcalloc c : [`NSTask] id)
(* class methods for category NSTaskConveniences of NSTask *)
let launchedTaskWithLaunchPath  ~arguments:(arguments : [`NSArray] Objc.t ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "launchedTaskWithLaunchPath" make_pointer_from_object
      ++ Objc.arg arguments "arguments" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSTask] Objc.id))
