(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSBitmapImageFileTypeExtensions of NSBitmapImageRep *)
class virtual methods_NSBitmapImageRep = object (self)
  method virtual repr : [`NSObject] Objc.id
  method representationUsingType_properties  (storageType : int) (properties : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg storageType "representationUsingType" make_int
      ++ Objc.arg properties "properties" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSData] Objc.id))
  method setProperty_withValue  (property : [`NSString] Objc.t) (value : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg property "setProperty" make_pointer_from_object
      ++ Objc.arg value "withValue" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method valueForProperty (property : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueForProperty:")
      [make_pointer_from_object property]) : [`NSObject] Objc.id)
end
