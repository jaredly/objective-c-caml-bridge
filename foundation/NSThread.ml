(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSThread.methods
end

class t = fun (r :[`NSThread] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSThread *)
let c = Classes.find "NSThread"
let _new()= (Objc.objcnew c : [`NSThread] id)
let alloc() = (Objc.objcalloc c : [`NSThread] id)
let currentThread () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentThread")[])
       : [`NSThread] Objc.id))
let detachNewThreadSelector_toTarget_withObject  (selector : selector) (target : [`NSObject] Objc.t) (argument : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg selector "detachNewThreadSelector" make_selector
      ++ Objc.arg target "toTarget" make_pointer_from_object
      ++ Objc.arg argument "withObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let isMultiThreaded () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "isMultiThreaded")[])
       : bool)
let sleepUntilDate (date : [`NSDate] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "sleepUntilDate:")
      [make_pointer_from_object date]) : unit)
let exit () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "exit")[])
       : unit)
let threadPriority () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "threadPriority")[])
       : float)
let setThreadPriority (priority : float) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "setThreadPriority:")
      [make_float priority]) : bool)
