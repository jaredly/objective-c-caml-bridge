(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextList *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithMarkerFormat_options  (format : [`NSString] Objc.t) (mask : int) =
    let sel, args = (
      Objc.arg format "initWithMarkerFormat" make_pointer_from_object
      ++ Objc.arg mask "options" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method markerFormat =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "markerFormat")[])
       : [`NSString] Objc.id))
  method listOptions =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "listOptions")[])
       : int)
  method markerForItemNumber (itemNum : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "markerForItemNumber:")
      [make_int itemNum]) : [`NSString] Objc.id))
end
