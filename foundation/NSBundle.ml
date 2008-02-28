(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSBundle] id) -> object
  inherit Im_NSBundle.methods
  method repr = r
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
let pathForResource  ~ofType:(ext : [`NSString] Objc.t ) ~inDirectory:(bundlePath : [`NSString] Objc.t ) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "pathForResource" make_pointer_from_object
      ++ Objc.arg ext "ofType" make_pointer_from_object
      ++ Objc.arg bundlePath "inDirectory" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSString] Objc.id))
let pathsForResourcesOfType  ~inDirectory:(bundlePath : [`NSString] Objc.t ) (ext : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg ext "pathsForResourcesOfType" make_pointer_from_object
      ++ Objc.arg bundlePath "inDirectory" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
  (* skipping selector preferredLocalizationsFromArray *)
let preferredLocalizationsFromArray  ?forPreferences:(preferencesArray : [`NSArray] Objc.t option) (localizationsArray : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg localizationsArray "preferredLocalizationsFromArray" make_pointer_from_object
      ++ Objc.opt_arg preferencesArray "forPreferences" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
