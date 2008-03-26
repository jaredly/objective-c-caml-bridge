(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSURLLoading of NSURL *)
class virtual methods_NSURL = object (self)
  method virtual repr : [`NSObject] Objc.id
  method resourceDataUsingCache (shouldUseCache : bool) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "resourceDataUsingCache:")
      [make_bool shouldUseCache]) : [`NSData] Objc.id))
  method loadResourceDataNotifyingClient_usingCache  (client : [`NSObject] Objc.t) (shouldUseCache : bool) =
    let sel, args = (
      Objc.arg client "loadResourceDataNotifyingClient" make_pointer_from_object
      ++ Objc.arg shouldUseCache "usingCache" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method propertyForKey (propertyKey : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "propertyForKey:")
      [make_pointer_from_object propertyKey]) : [`NSObject] Objc.id)
  method setResourceData (data : [`NSData] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "setResourceData:")
      [make_pointer_from_object data]) : bool)
  method setProperty_forKey  (property : [`NSObject] Objc.t) (propertyKey : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg property "setProperty" make_pointer_from_object
      ++ Objc.arg propertyKey "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method urlHandleUsingCache (shouldUseCache : bool) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "URLHandleUsingCache:")
      [make_bool shouldUseCache]) : [`NSURLHandle] Objc.id))
end
