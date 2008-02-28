(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSHelpManager *)
class virtual methods = object (self)
  method virtual repr : [`NSHelpManager] Objc.id
  method setContextHelp  ~forObject:(_object : [`NSObject] Objc.t ) (attrString : [`NSAttributedString] Objc.t) =
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
(*  UNSUPPORTED
  method showContextHelpForObject  ~locationHint:(pt : (*NSPoint*) unsupported ) (_object : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg _object "showContextHelpForObject" make_pointer_from_object
      ++ Objc.arg pt "locationHint" (*NSPoint*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method openHelpAnchor  ~inBook:(book : [`NSString] Objc.t ) (anchor : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg anchor "openHelpAnchor" make_pointer_from_object
      ++ Objc.arg book "inBook" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method findString  ~inBook:(book : [`NSString] Objc.t ) (query : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg query "findString" make_pointer_from_object
      ++ Objc.arg book "inBook" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
