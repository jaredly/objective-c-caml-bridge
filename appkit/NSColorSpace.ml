open Objc
open NSObject


external init : unit -> unit = "caml_init_NSColorSpace"
let _ = init()
(* Class object for NSColorSpace *)
let class_NSColorSpace = object
   val o = Classes.find "NSColorSpace"
   method _new = (Objc.objcnew o : [`NSColorSpace] nativeNSObject)
   method genericRGBColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "genericRGBColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
   method genericGrayColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "genericGrayColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
   method genericCMYKColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "genericCMYKColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
   method deviceRGBColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "deviceRGBColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
   method deviceGrayColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "deviceGrayColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
   method deviceCMYKColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "deviceCMYKColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSColorSpace *)
class native_NSColorSpace = fun (o : [`NSColorSpace] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithICCProfileData (iccData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithICCProfileData:")[make_pointer_from_object iccData]) : [`NSObject] Objc.nativeNSObject)
   method l_ICCProfileData =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_ICCProfileData:")[]) : [`NSData] Objc.nativeNSObject)
   method initWithColorSyncProfile (prof : [`void] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithColorSyncProfile:")[make_pointer_from_object prof]) : [`NSObject] Objc.nativeNSObject)
   method colorSyncProfile =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "colorSyncProfile:")[]) : [`void] Objc.nativeNSObject)
   method numberOfColorComponents =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfColorComponents:")[]) : int)
   method colorSpaceModel =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "colorSpaceModel:")[]) : int)
   method localizedName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localizedName:")[]) : [`NSString] Objc.nativeNSObject)
end
