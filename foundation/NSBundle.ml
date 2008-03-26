(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSBundle.methods
end

class t = fun (r :[`NSBundle] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSBundle *)
let c = Classes.find "NSBundle"
let _new()= (Objc.objcnew c : [`NSBundle] id)
let alloc() = (Objc.objcalloc c : [`NSBundle] id)
let mainBundle () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "mainBundle")[])
       : [`NSBundle] Objc.id))
let bundleWithPath (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "bundleWithPath:")
      [make_pointer_from_object path]) : [`NSBundle] Objc.id))
let bundleForClass (aClass : [`NSObject] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "bundleForClass:")
      [make_pointer_from_object aClass]) : [`NSBundle] Objc.id))
let bundleWithIdentifier (identifier : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "bundleWithIdentifier:")
      [make_pointer_from_object identifier]) : [`NSBundle] Objc.id))
let allBundles () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "allBundles")[])
       : [`NSArray] Objc.id))
let allFrameworks () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "allFrameworks")[])
       : [`NSArray] Objc.id))
let pathForResource_ofType_inDirectory  (name : [`NSString] Objc.t) (ext : [`NSString] Objc.t) (bundlePath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "pathForResource" make_pointer_from_object
      ++ Objc.arg ext "ofType" make_pointer_from_object
      ++ Objc.arg bundlePath "inDirectory" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))
let pathsForResourcesOfType_inDirectory  (ext : [`NSString] Objc.t) (bundlePath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg ext "pathsForResourcesOfType" make_pointer_from_object
      ++ Objc.arg bundlePath "inDirectory" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
let preferredLocalizationsFromArray (localizationsArray : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "preferredLocalizationsFromArray:")
      [make_pointer_from_object localizationsArray]) : [`NSArray] Objc.id))
let preferredLocalizationsFromArray_forPreferences  (localizationsArray : [`NSArray] Objc.t) (preferencesArray : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg localizationsArray "preferredLocalizationsFromArray" make_pointer_from_object
      ++ Objc.arg preferencesArray "forPreferences" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
