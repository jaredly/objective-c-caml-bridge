(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSTextField


external init : unit -> unit = "caml_init_NSSearchField"
let _ = init()
let make_NSTextField_of_NSSearchField (o : [`NSSearchField] nativeNSObject) = (Obj.magic o : [`NSTextField] nativeNSObject)
(* Class object for NSSearchField *)
let class_NSSearchField = object
   val repr = Classes.find "NSSearchField"
   method _new = (Objc.objcnew repr : [`NSSearchField] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSearchField] nativeNSObject)
end
(* Encapsulation for native instance of NSSearchField *)
class native_NSSearchField = fun (o : [`NSSearchField] nativeNSObject) -> object (self)
   inherit native_NSTextField (make_NSTextField_of_NSSearchField o) as super
   method setRecentSearches (searches : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRecentSearches:")[make_pointer_from_object searches]) : unit)
   method recentSearches =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "recentSearches:")[]) : [`NSArray] Objc.nativeNSObject)
   method setRecentsAutosaveName (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRecentsAutosaveName:")[make_pointer_from_object string]) : unit)
   method recentsAutosaveName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "recentsAutosaveName:")[]) : [`NSString] Objc.nativeNSObject)
end
