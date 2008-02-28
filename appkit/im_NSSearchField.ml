(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSearchField *)
class virtual methods = object (self)
  method virtual repr : [`NSSearchField] Objc.id
  method setRecentSearches (searches : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRecentSearches:")
      [make_pointer_from_object searches]) : unit)
  method recentSearches =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "recentSearches")[])
       : [`NSArray] Objc.id))
  method setRecentsAutosaveName (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRecentsAutosaveName:")
      [make_pointer_from_object string]) : unit)
  method recentsAutosaveName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "recentsAutosaveName")[])
       : [`NSString] Objc.id))
end
