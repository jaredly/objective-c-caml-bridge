(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSNibConnector *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method source =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "source")[])
       : [`NSObject] Objc.id)
  method setSource (source : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSource:")
      [make_pointer_from_object source]) : unit)
  method destination =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "destination")[])
       : [`NSObject] Objc.id)
  method setDestination (destination : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDestination:")
      [make_pointer_from_object destination]) : unit)
  method label =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "label")[])
       : [`NSString] Objc.id))
  method setLabel (label : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLabel:")
      [make_pointer_from_object label]) : unit)
  method replaceObject_withObject  (oldObject : [`NSObject] Objc.t) (newObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg oldObject "replaceObject" make_pointer_from_object
      ++ Objc.arg newObject "withObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method establishConnection =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "establishConnection")[])
       : unit)
end
