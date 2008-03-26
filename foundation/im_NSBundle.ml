(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSBundle *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithPath (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithPath:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method load =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "load")[])
       : bool)
  method isLoaded =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isLoaded")[])
       : bool)
  method bundlePath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "bundlePath")[])
       : [`NSString] Objc.id))
  method resourcePath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "resourcePath")[])
       : [`NSString] Objc.id))
  method executablePath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "executablePath")[])
       : [`NSString] Objc.id))
  method pathForAuxiliaryExecutable (executableName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pathForAuxiliaryExecutable:")
      [make_pointer_from_object executableName]) : [`NSString] Objc.id))
  method privateFrameworksPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "privateFrameworksPath")[])
       : [`NSString] Objc.id))
  method sharedFrameworksPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sharedFrameworksPath")[])
       : [`NSString] Objc.id))
  method sharedSupportPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sharedSupportPath")[])
       : [`NSString] Objc.id))
  method builtInPlugInsPath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "builtInPlugInsPath")[])
       : [`NSString] Objc.id))
  method bundleIdentifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "bundleIdentifier")[])
       : [`NSString] Objc.id))
  method classNamed (className : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classNamed:")
      [make_pointer_from_object className]) : [`NSObject] Objc.id)
  method principalClass =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "principalClass")[])
       : [`NSObject] Objc.id)
  method pathForResource_ofType  (name : [`NSString] Objc.t) (ext : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "pathForResource" make_pointer_from_object
      ++ Objc.arg ext "ofType" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method pathForResource_ofType_inDirectory  (name : [`NSString] Objc.t) (ext : [`NSString] Objc.t) (subpath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "pathForResource" make_pointer_from_object
      ++ Objc.arg ext "ofType" make_pointer_from_object
      ++ Objc.arg subpath "inDirectory" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method pathForResource_ofType_inDirectory_forLocalization  (name : [`NSString] Objc.t) (ext : [`NSString] Objc.t) (subpath : [`NSString] Objc.t) (localizationName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "pathForResource" make_pointer_from_object
      ++ Objc.arg ext "ofType" make_pointer_from_object
      ++ Objc.arg subpath "inDirectory" make_pointer_from_object
      ++ Objc.arg localizationName "forLocalization" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method pathsForResourcesOfType_inDirectory  (ext : [`NSString] Objc.t) (subpath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg ext "pathsForResourcesOfType" make_pointer_from_object
      ++ Objc.arg subpath "inDirectory" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
  method pathsForResourcesOfType_inDirectory_forLocalization  (ext : [`NSString] Objc.t) (subpath : [`NSString] Objc.t) (localizationName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg ext "pathsForResourcesOfType" make_pointer_from_object
      ++ Objc.arg subpath "inDirectory" make_pointer_from_object
      ++ Objc.arg localizationName "forLocalization" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
  method localizedStringForKey_value_table  (key : [`NSString] Objc.t) (value : [`NSString] Objc.t) (tableName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "localizedStringForKey" make_pointer_from_object
      ++ Objc.arg value "value" make_pointer_from_object
      ++ Objc.arg tableName "table" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method infoDictionary =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "infoDictionary")[])
       : [`NSDictionary] Objc.id))
  method localizedInfoDictionary =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localizedInfoDictionary")[])
       : [`NSDictionary] Objc.id))
  method objectForInfoDictionaryKey (key : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectForInfoDictionaryKey:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
  method localizations =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localizations")[])
       : [`NSArray] Objc.id))
  method preferredLocalizations =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "preferredLocalizations")[])
       : [`NSArray] Objc.id))
  method developmentLocalization =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "developmentLocalization")[])
       : [`NSString] Objc.id))
end
