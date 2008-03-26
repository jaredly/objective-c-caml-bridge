(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSpellServer *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method registerLanguage_byVendor  (language : [`NSString] Objc.t) (vendor : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg language "registerLanguage" make_pointer_from_object
      ++ Objc.arg vendor "byVendor" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method isWordInUserDictionaries_caseSensitive  (word : [`NSString] Objc.t) (flag : bool) =
    let sel, args = (
      Objc.arg word "isWordInUserDictionaries" make_pointer_from_object
      ++ Objc.arg flag "caseSensitive" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method run =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "run")[])
       : unit)
end
