open Objc
open NSObject
open NSGeometry
open NSView


external init : unit -> unit = "caml_init_NSTabViewItem"
let _ = init()
(* Class object for NSTabViewItem *)
let class_NSTabViewItem = object
   val o = Classes.find "NSTabViewItem"
   method _new = (Objc.objcnew o : [`NSTabViewItem] nativeNSObject)
end
(* Encapsulation for native instance of NSTabViewItem *)
class native_NSTabViewItem = fun (o : [`NSTabViewItem] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithIdentifier (identifier : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithIdentifier:")[make_pointer_from_object identifier]) : [`NSObject] Objc.nativeNSObject)
   method identifier =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "identifier:")[]) : [`NSObject] Objc.nativeNSObject)
   method view =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "view:")[]) : [`NSObject] Objc.nativeNSObject)
   method initialFirstResponder =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initialFirstResponder:")[]) : [`NSObject] Objc.nativeNSObject)
   method label =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "label:")[]) : [`NSString] Objc.nativeNSObject)
   method color =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "color:")[]) : [`NSColor] Objc.nativeNSObject)
   method tabState =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "tabState:")[]) : int)
   method tabView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "tabView:")[]) : [`NSTabView] Objc.nativeNSObject)
   method setIdentifier (identifier : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setIdentifier:")[make_pointer_from_object identifier]) : unit)
   method setLabel (label : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLabel:")[make_pointer_from_object label]) : unit)
   method setColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setColor:")[make_pointer_from_object color]) : unit)
   method setView (view : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setView:")[make_pointer_from_object view]) : unit)
   method setInitialFirstResponder (view : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setInitialFirstResponder:")[make_pointer_from_object view]) : unit)
(*  UNSUPPORTED
   method drawLabel  ~inRect:(labelRect : (*NSRect*) unsupported ) (shouldTruncateLabel : bool) =
     let sel, args = (
       Objc.arg shouldTruncateLabel "drawLabel" make_bool
       ++ Objc.arg labelRect "inRect" (*NSRect*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method sizeOfLabel (computeMin : bool) =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "sizeOfLabel:")[make_bool computeMin]) : (*NSSize*) unsupported)

*)
end
