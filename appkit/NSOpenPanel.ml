(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSOpenPanel] id) -> object
  inherit Cati_NSOpenPanelRuntime.methods_NSOpenPanel
  inherit Im_NSOpenPanel.methods
  method repr = r
end

(* Class object for NSOpenPanel *)
let c = Classes.find "NSOpenPanel"
let _new()= (Objc.objcnew c : [`NSOpenPanel] id)
let alloc() = (Objc.objcalloc c : [`NSOpenPanel] id)
(* class methods for category NSOpenPanelRuntime of NSOpenPanel *)
let openPanel () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "openPanel")[])
       : [`NSOpenPanel] Objc.id))
