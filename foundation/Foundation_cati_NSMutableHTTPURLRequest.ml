(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSMutableHTTPURLRequest of NSMutableURLRequest *)
class virtual methods_NSMutableURLRequest = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setHTTPMethod (_method : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHTTPMethod:")
      [make_pointer_from_object _method]) : unit)
  method setAllHTTPHeaderFields (headerFields : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllHTTPHeaderFields:")
      [make_pointer_from_object headerFields]) : unit)
  method setValue_forHTTPHeaderField  (value : [`NSString] Objc.t) (field : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "setValue" make_pointer_from_object
      ++ Objc.arg field "forHTTPHeaderField" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method addValue_forHTTPHeaderField  (value : [`NSString] Objc.t) (field : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "addValue" make_pointer_from_object
      ++ Objc.arg field "forHTTPHeaderField" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setHTTPBody (data : [`NSData] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHTTPBody:")
      [make_pointer_from_object data]) : unit)
  method setHTTPBodyStream (inputStream : [`NSInputStream] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHTTPBodyStream:")
      [make_pointer_from_object inputStream]) : unit)
  method setHTTPShouldHandleCookies (should : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHTTPShouldHandleCookies:")
      [make_bool should]) : unit)
end
