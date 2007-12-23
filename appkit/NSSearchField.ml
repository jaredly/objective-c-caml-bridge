open Objc
open NSTextField


external init : unit -> unit = "caml_init_NSSearchField"
let _ = init()
(* Class object for NSSearchField *)
let class_NSSearchField = object
   val o = Classes.find "NSSearchField"
   method _new = (Objc.objcnew o : [`NSSearchField] nativeNSObject)
end
(* Encapsulation for native instance of NSSearchField *)
class native_NSSearchField = fun (o : [`NSSearchField] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setRecentSearches (searches : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRecentSearches:")[make_pointer_from_object searches]) : unit)
   method recentSearches =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "recentSearches:")[]) : [`NSArray] Objc.nativeNSObject)
   method setRecentsAutosaveName (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRecentsAutosaveName:")[make_pointer_from_object string]) : unit)
   method recentsAutosaveName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "recentsAutosaveName:")[]) : [`NSString] Objc.nativeNSObject)
end
