(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSBrowserCell *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method highlightColorInView (controlView : [`NSView] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "highlightColorInView:")
      [make_pointer_from_object controlView]) : [`NSColor] Objc.id))
  method isLeaf =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isLeaf")[])
       : bool)
  method setLeaf (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLeaf:")
      [make_bool flag]) : unit)
  method isLoaded =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isLoaded")[])
       : bool)
  method setLoaded (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLoaded:")
      [make_bool flag]) : unit)
  method reset =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "reset")[])
       : unit)
  method set =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "set")[])
       : unit)
  method setImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImage:")
      [make_pointer_from_object image]) : unit)
  method image =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "image")[])
       : [`NSImage] Objc.id))
  method setAlternateImage (newAltImage : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlternateImage:")
      [make_pointer_from_object newAltImage]) : unit)
  method alternateImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "alternateImage")[])
       : [`NSImage] Objc.id))
end
