open Objc
open NSCell


external init : unit -> unit = "caml_init_NSBrowserCell"
let _ = init()
(* Class object for NSBrowserCell *)
let class_NSBrowserCell = object
   val o = Classes.find "NSBrowserCell"
   method _new = (Objc.objcnew o : [`NSBrowserCell] nativeNSObject)
   method branchImage =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "branchImage:")[]) : [`NSImage] Objc.nativeNSObject)
   method highlightedBranchImage =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "highlightedBranchImage:")[]) : [`NSImage] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSBrowserCell *)
class native_NSBrowserCell = fun (o : [`NSBrowserCell] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method highlightColorInView (controlView : [`NSView] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "highlightColorInView:")[make_pointer_from_object controlView]) : [`NSColor] Objc.nativeNSObject)
   method isLeaf =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isLeaf:")[]) : bool)
   method setLeaf (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLeaf:")[make_bool flag]) : unit)
   method isLoaded =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isLoaded:")[]) : bool)
   method setLoaded (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLoaded:")[make_bool flag]) : unit)
   method reset =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "reset:")[]) : unit)
   method set =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "set:")[]) : unit)
   method setImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setImage:")[make_pointer_from_object image]) : unit)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
   method setAlternateImage (newAltImage : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAlternateImage:")[make_pointer_from_object newAltImage]) : unit)
   method alternateImage =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "alternateImage:")[]) : [`NSImage] Objc.nativeNSObject)
end
