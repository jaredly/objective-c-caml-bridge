(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSColorSpace *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithICCProfileData (iccData : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithICCProfileData:")
      [make_pointer_from_object iccData]) : [`NSObject] Objc.id)
  method _ICCProfileData =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "ICCProfileData")[])
       : [`NSData] Objc.id))
  method initWithColorSyncProfile (prof : [`void] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithColorSyncProfile:")
      [make_pointer_from_object prof]) : [`NSObject] Objc.id)
  method colorSyncProfile =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "colorSyncProfile")[])
       : [`void] Objc.id))
  method numberOfColorComponents =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfColorComponents")[])
       : int)
  method colorSpaceModel =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "colorSpaceModel")[])
       : int)
  method localizedName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localizedName")[])
       : [`NSString] Objc.id))
end
