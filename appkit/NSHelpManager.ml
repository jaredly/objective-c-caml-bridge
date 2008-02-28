(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSHelpManager] id) -> object
  inherit Im_NSHelpManager.methods
  method repr = r
end

(* Class object for NSHelpManager *)
let c = Classes.find "NSHelpManager"
let _new()= (Objc.objcnew c : [`NSHelpManager] id)
let alloc() = (Objc.objcalloc c : [`NSHelpManager] id)
let sharedHelpManager () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedHelpManager")[])
       : [`NSHelpManager] Objc.id))
let setContextHelpModeActive (active : bool) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setContextHelpModeActive:")
      [make_bool active]) : unit)
let isContextHelpModeActive () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "isContextHelpModeActive")[])
       : bool)
