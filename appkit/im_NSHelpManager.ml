(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSHelpManager *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setContextHelp_forObject  (attrString : [`NSAttributedString] Objc.t) (_object : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg attrString "setContextHelp" make_pointer_from_object
      ++ Objc.arg _object "forObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeContextHelpForObject (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeContextHelpForObject:")
      [make_pointer_from_object _object]) : unit)
  method contextHelpForObject (_object : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "contextHelpForObject:")
      [make_pointer_from_object _object]) : [`NSAttributedString] Objc.id))
  method showContextHelpForObject_locationHint  (_object : [`NSObject] Objc.t) (pt : NSPoint.t) =
    let sel, args = (
      Objc.arg _object "showContextHelpForObject" make_pointer_from_object
      ++ Objc.arg pt "locationHint" make_point
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method openHelpAnchor_inBook  (anchor : [`NSString] Objc.t) (book : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg anchor "openHelpAnchor" make_pointer_from_object
      ++ Objc.arg book "inBook" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method findString_inBook  (query : [`NSString] Objc.t) (book : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg query "findString" make_pointer_from_object
      ++ Objc.arg book "inBook" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
