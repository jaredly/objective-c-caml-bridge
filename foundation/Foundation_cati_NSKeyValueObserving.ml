(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSKeyValueObserving of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method observeValueForKeyPath_ofObject_change_context  (keyPath : [`NSString] Objc.t) (_object : [`NSObject] Objc.t) (change : [`NSDictionary] Objc.t) (context : [`void] Objc.t) =
    let sel, args = (
      Objc.arg keyPath "observeValueForKeyPath" make_pointer_from_object
      ++ Objc.arg _object "ofObject" make_pointer_from_object
      ++ Objc.arg change "change" make_pointer_from_object
      ++ Objc.arg context "context" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
