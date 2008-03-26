(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSKeyValueObserverRegistration of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
(*  UNSUPPORTED
  method addObserver_forKeyPath_options_context  (observer : [`NSObject] Objc.t) (keyPath : [`NSString] Objc.t) (options : (*NSKeyValueObservingOptions*) unsupported) (context : [`void] Objc.t) =
    let sel, args = (
      Objc.arg observer "addObserver" make_pointer_from_object
      ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
      ++ Objc.arg options "options" (*NSKeyValueObservingOptions*) unsupported
      ++ Objc.arg context "context" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method removeObserver_forKeyPath  (observer : [`NSObject] Objc.t) (keyPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg observer "removeObserver" make_pointer_from_object
      ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
(* instance methods for category NSKeyValueObserverRegistration of NSArray *)
class virtual methods_NSArray = object (self)
  method virtual repr : [`NSObject] Objc.id
(*  UNSUPPORTED
  method addObserver_toObjectsAtIndexes_forKeyPath_options_context  (observer : [`NSObject] Objc.t) (indexes : [`NSIndexSet] Objc.t) (keyPath : [`NSString] Objc.t) (options : (*NSKeyValueObservingOptions*) unsupported) (context : [`void] Objc.t) =
    let sel, args = (
      Objc.arg observer "addObserver" make_pointer_from_object
      ++ Objc.arg indexes "toObjectsAtIndexes" make_pointer_from_object
      ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
      ++ Objc.arg options "options" (*NSKeyValueObservingOptions*) unsupported
      ++ Objc.arg context "context" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method removeObserver_fromObjectsAtIndexes_forKeyPath  (observer : [`NSObject] Objc.t) (indexes : [`NSIndexSet] Objc.t) (keyPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg observer "removeObserver" make_pointer_from_object
      ++ Objc.arg indexes "fromObjectsAtIndexes" make_pointer_from_object
      ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method addObserver_forKeyPath_options_context  (observer : [`NSObject] Objc.t) (keyPath : [`NSString] Objc.t) (options : (*NSKeyValueObservingOptions*) unsupported) (context : [`void] Objc.t) =
    let sel, args = (
      Objc.arg observer "addObserver" make_pointer_from_object
      ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
      ++ Objc.arg options "options" (*NSKeyValueObservingOptions*) unsupported
      ++ Objc.arg context "context" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method removeObserver_forKeyPath  (observer : [`NSObject] Objc.t) (keyPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg observer "removeObserver" make_pointer_from_object
      ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
(* instance methods for category NSKeyValueObserverRegistration of NSSet *)
class virtual methods_NSSet = object (self)
  method virtual repr : [`NSObject] Objc.id
(*  UNSUPPORTED
  method addObserver_forKeyPath_options_context  (observer : [`NSObject] Objc.t) (keyPath : [`NSString] Objc.t) (options : (*NSKeyValueObservingOptions*) unsupported) (context : [`void] Objc.t) =
    let sel, args = (
      Objc.arg observer "addObserver" make_pointer_from_object
      ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
      ++ Objc.arg options "options" (*NSKeyValueObservingOptions*) unsupported
      ++ Objc.arg context "context" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method removeObserver_forKeyPath  (observer : [`NSObject] Objc.t) (keyPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg observer "removeObserver" make_pointer_from_object
      ++ Objc.arg keyPath "forKeyPath" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
