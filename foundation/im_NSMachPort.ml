(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMachPort *)
class virtual methods = object (self)
  method virtual repr : [`NSMachPort] Objc.id
  method initWithMachPort (machPort : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithMachPort:")
      [make_int machPort]) : [`NSObject] Objc.id)
  method machPort =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "machPort")[])
       : int)
  method scheduleInRunLoop  ~forMode:(mode : [`NSString] Objc.t ) (runLoop : [`NSRunLoop] Objc.t) =
    let sel, args = (
      Objc.arg runLoop "scheduleInRunLoop" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeFromRunLoop  ~forMode:(mode : [`NSString] Objc.t ) (runLoop : [`NSRunLoop] Objc.t) =
    let sel, args = (
      Objc.arg runLoop "removeFromRunLoop" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
