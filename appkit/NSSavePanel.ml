(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
(* let_NSFileHandlingPanelCancelButton = ?? *)
(* let_NSFileHandlingPanelOKButton = ?? *)


class virtual methods = object
  inherit AppKit_cati_NSSavePanelRuntime.methods_NSSavePanel
  inherit Im_NSSavePanel.methods
end

class t = fun (r :[`NSSavePanel] id) -> object
  inherit methods
  inherit NSPanel.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSavePanel *)
let c = Classes.find "NSSavePanel"
let _new()= (Objc.objcnew c : [`NSSavePanel] id)
let alloc() = (Objc.objcalloc c : [`NSSavePanel] id)
(* class methods for category NSSavePanelRuntime of NSSavePanel *)
let savePanel () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "savePanel")[])
       : [`NSSavePanel] Objc.id))
