(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSColorSpace"
let _ = init()
let make_NSObject_of_NSColorSpace (o : [`NSColorSpace] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSColorSpace *)
let class_NSColorSpace = object
   val repr = Classes.find "NSColorSpace"
   method _new = (Objc.objcnew repr : [`NSColorSpace] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSColorSpace] nativeNSObject)
   method genericRGBColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "genericRGBColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
   method genericGrayColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "genericGrayColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
   method genericCMYKColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "genericCMYKColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
   method deviceRGBColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "deviceRGBColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
   method deviceGrayColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "deviceGrayColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
   method deviceCMYKColorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "deviceCMYKColorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSColorSpace *)
class native_NSColorSpace = fun (o : [`NSColorSpace] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSColorSpace o) as super
   method initWithICCProfileData (iccData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithICCProfileData:")[make_pointer_from_object iccData]) : [`NSObject] Objc.nativeNSObject)
   method l_ICCProfileData =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_ICCProfileData:")[]) : [`NSData] Objc.nativeNSObject)
   method initWithColorSyncProfile (prof : [`void] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithColorSyncProfile:")[make_pointer_from_object prof]) : [`NSObject] Objc.nativeNSObject)
   method colorSyncProfile =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "colorSyncProfile:")[]) : [`void] Objc.nativeNSObject)
   method numberOfColorComponents =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfColorComponents:")[]) : int)
   method colorSpaceModel =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "colorSpaceModel:")[]) : int)
   method localizedName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "localizedName:")[]) : [`NSString] Objc.nativeNSObject)
end
