(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSBrowser.methods
end

class t = fun (r :[`NSBrowser] id) -> object
  inherit methods
  inherit NSControl.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSBrowser *)
let c = Classes.find "NSBrowser"
let _new()= (Objc.objcnew c : [`NSBrowser] id)
let alloc() = (Objc.objcalloc c : [`NSBrowser] id)
let cellClass () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "cellClass")[])
       : [`NSBrowser] Objc.id))
let removeSavedColumnsWithAutosaveName (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "removeSavedColumnsWithAutosaveName:")
      [make_pointer_from_object name]) : unit)
