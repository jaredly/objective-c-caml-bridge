(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSCell


external init : unit -> unit = "caml_init_NSBrowserCell"
let _ = init()
let make_NSCell_of_NSBrowserCell (o : [`NSBrowserCell] nativeNSObject) = (Obj.magic o : [`NSCell] nativeNSObject)
(* Class object for NSBrowserCell *)
let class_NSBrowserCell = object
   val repr = Classes.find "NSBrowserCell"
   method _new = (Objc.objcnew repr : [`NSBrowserCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSBrowserCell] nativeNSObject)
   method branchImage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "branchImage:")[]) : [`NSImage] Objc.nativeNSObject)
   method highlightedBranchImage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "highlightedBranchImage:")[]) : [`NSImage] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSBrowserCell *)
class native_NSBrowserCell = fun (o : [`NSBrowserCell] nativeNSObject) -> object (self)
   inherit native_NSCell (make_NSCell_of_NSBrowserCell o) as super
   method highlightColorInView (controlView : [`NSView] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "highlightColorInView:")[make_pointer_from_object controlView]) : [`NSColor] Objc.nativeNSObject)
   method isLeaf =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isLeaf:")[]) : bool)
   method setLeaf (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLeaf:")[make_bool flag]) : unit)
   method isLoaded =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isLoaded:")[]) : bool)
   method setLoaded (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLoaded:")[make_bool flag]) : unit)
   method reset =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "reset:")[]) : unit)
   method set =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "set:")[]) : unit)
   method setImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImage:")[make_pointer_from_object image]) : unit)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
   method setAlternateImage (newAltImage : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAlternateImage:")[make_pointer_from_object newAltImage]) : unit)
   method alternateImage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "alternateImage:")[]) : [`NSImage] Objc.nativeNSObject)
end
