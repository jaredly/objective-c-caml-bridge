(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSUserDefaults *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method initWithUser (username : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithUser:")
      [make_pointer_from_object username]) : [`NSObject] Objc.id)
  method objectForKey (defaultName : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectForKey:")
      [make_pointer_from_object defaultName]) : [`NSObject] Objc.id)
  method setObject_forKey  (value : [`NSObject] Objc.t) (defaultName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "setObject" make_pointer_from_object
      ++ Objc.arg defaultName "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeObjectForKey (defaultName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObjectForKey:")
      [make_pointer_from_object defaultName]) : unit)
  method stringForKey (defaultName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringForKey:")
      [make_pointer_from_object defaultName]) : [`NSString] Objc.id))
  method arrayForKey (defaultName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "arrayForKey:")
      [make_pointer_from_object defaultName]) : [`NSArray] Objc.id))
  method dictionaryForKey (defaultName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dictionaryForKey:")
      [make_pointer_from_object defaultName]) : [`NSDictionary] Objc.id))
  method dataForKey (defaultName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataForKey:")
      [make_pointer_from_object defaultName]) : [`NSData] Objc.id))
  method stringArrayForKey (defaultName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringArrayForKey:")
      [make_pointer_from_object defaultName]) : [`NSArray] Objc.id))
  method integerForKey (defaultName : [`NSString] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "integerForKey:")
      [make_pointer_from_object defaultName]) : int)
  method floatForKey (defaultName : [`NSString] Objc.t) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "floatForKey:")
      [make_pointer_from_object defaultName]) : float)
  method boolForKey (defaultName : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "boolForKey:")
      [make_pointer_from_object defaultName]) : bool)
  method setInteger_forKey  (value : int) (defaultName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "setInteger" make_int
      ++ Objc.arg defaultName "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setFloat_forKey  (value : float) (defaultName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "setFloat" make_float
      ++ Objc.arg defaultName "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setBool_forKey  (value : bool) (defaultName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg value "setBool" make_bool
      ++ Objc.arg defaultName "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method registerDefaults (registrationDictionary : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "registerDefaults:")
      [make_pointer_from_object registrationDictionary]) : unit)
  method addSuiteNamed (suiteName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addSuiteNamed:")
      [make_pointer_from_object suiteName]) : unit)
  method removeSuiteNamed (suiteName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeSuiteNamed:")
      [make_pointer_from_object suiteName]) : unit)
  method dictionaryRepresentation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dictionaryRepresentation")[])
       : [`NSDictionary] Objc.id))
  method volatileDomainNames =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "volatileDomainNames")[])
       : [`NSArray] Objc.id))
  method volatileDomainForName (domainName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "volatileDomainForName:")
      [make_pointer_from_object domainName]) : [`NSDictionary] Objc.id))
  method setVolatileDomain_forName  (domain : [`NSDictionary] Objc.t) (domainName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg domain "setVolatileDomain" make_pointer_from_object
      ++ Objc.arg domainName "forName" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeVolatileDomainForName (domainName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeVolatileDomainForName:")
      [make_pointer_from_object domainName]) : unit)
  method persistentDomainNames =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "persistentDomainNames")[])
       : [`NSArray] Objc.id))
  method persistentDomainForName (domainName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "persistentDomainForName:")
      [make_pointer_from_object domainName]) : [`NSDictionary] Objc.id))
  method setPersistentDomain_forName  (domain : [`NSDictionary] Objc.t) (domainName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg domain "setPersistentDomain" make_pointer_from_object
      ++ Objc.arg domainName "forName" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removePersistentDomainForName (domainName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removePersistentDomainForName:")
      [make_pointer_from_object domainName]) : unit)
  method synchronize =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "synchronize")[])
       : bool)
  method objectIsForcedForKey (key : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "objectIsForcedForKey:")
      [make_pointer_from_object key]) : bool)
  method objectIsForcedForKey_inDomain  (key : [`NSString] Objc.t) (domain : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "objectIsForcedForKey" make_pointer_from_object
      ++ Objc.arg domain "inDomain" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
