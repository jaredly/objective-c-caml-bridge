(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPortCoder *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method isBycopy =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isBycopy")[])
       : bool)
  method isByref =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isByref")[])
       : bool)
  method connection =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "connection")[])
       : [`NSConnection] Objc.id))
  method encodePortObject (aport : [`NSPort] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodePortObject:")
      [make_pointer_from_object aport]) : unit)
  method decodePortObject =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decodePortObject")[])
       : [`NSPort] Objc.id))
  method initWithReceivePort_sendPort_components  (rcvPort : [`NSPort] Objc.t) (sndPort : [`NSPort] Objc.t) (comps : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg rcvPort "initWithReceivePort" make_pointer_from_object
      ++ Objc.arg sndPort "sendPort" make_pointer_from_object
      ++ Objc.arg comps "components" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method dispatch =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "dispatch")[])
       : unit)
end
