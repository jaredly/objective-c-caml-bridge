(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSNetServiceDelegateMethods of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method netServiceWillPublish (sender : [`NSNetService] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "netServiceWillPublish:")
      [make_pointer_from_object sender]) : unit)
  method netServiceWillResolve (sender : [`NSNetService] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "netServiceWillResolve:")
      [make_pointer_from_object sender]) : unit)
  method netService_didNotPublish  (sender : [`NSNetService] Objc.t) (errorDict : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg sender "netService" make_pointer_from_object
      ++ Objc.arg errorDict "didNotPublish" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method netServiceDidResolveAddress (sender : [`NSNetService] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "netServiceDidResolveAddress:")
      [make_pointer_from_object sender]) : unit)
  method netService_didNotResolve  (sender : [`NSNetService] Objc.t) (errorDict : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg sender "netService" make_pointer_from_object
      ++ Objc.arg errorDict "didNotResolve" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method netServiceDidStop (sender : [`NSNetService] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "netServiceDidStop:")
      [make_pointer_from_object sender]) : unit)
  method netService_didUpdateTXTRecordData  (sender : [`NSNetService] Objc.t) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg sender "netService" make_pointer_from_object
      ++ Objc.arg data "didUpdateTXTRecordData" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method netServiceDidPublish (sender : [`NSNetService] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "netServiceDidPublish:")
      [make_pointer_from_object sender]) : unit)
end
