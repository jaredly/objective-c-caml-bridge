(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSRunLoopConveniences of NSRunLoop *)
class virtual methods_NSRunLoop = object (self)
  method virtual repr : [`NSRunLoop] Objc.id
  method run =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "run")[])
       : unit)
  method runUntilDate (limitDate : [`NSDate] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "runUntilDate:")
      [make_pointer_from_object limitDate]) : unit)
  method runMode  ~beforeDate:(limitDate : [`NSDate] Objc.t ) (mode : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg mode "runMode" make_pointer_from_object
      ++ Objc.arg limitDate "beforeDate" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method configureAsServer =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "configureAsServer")[])
       : unit)
end
