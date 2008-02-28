(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSToolbarSupport of NSWindow *)
class virtual methods_NSWindow = object (self)
  method virtual repr : [`NSWindow] Objc.id
  method setToolbar (toolbar : [`NSToolbar] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setToolbar:")
      [make_pointer_from_object toolbar]) : unit)
  method toolbar =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "toolbar")[])
       : [`NSToolbar] Objc.id))
  method toggleToolbarShown (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "toggleToolbarShown:")
      [make_pointer_from_object sender]) : unit)
  method runToolbarCustomizationPalette (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "runToolbarCustomizationPalette:")
      [make_pointer_from_object sender]) : unit)
  method setShowsToolbarButton (show : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowsToolbarButton:")
      [make_bool show]) : unit)
  method showsToolbarButton =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "showsToolbarButton")[])
       : bool)
end
