(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTabViewItem *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithIdentifier (identifier : [`NSObject] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithIdentifier:")
      [make_pointer_from_object identifier]) : [`NSObject] Objc.id)
  method identifier =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "identifier")[])
       : [`NSObject] Objc.id)
  method view =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "view")[])
       : [`NSObject] Objc.id)
  method initialFirstResponder =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initialFirstResponder")[])
       : [`NSObject] Objc.id)
  method label =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "label")[])
       : [`NSString] Objc.id))
  method color =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "color")[])
       : [`NSColor] Objc.id))
  method tabState =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tabState")[])
       : int)
  method tabView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "tabView")[])
       : [`NSTabView] Objc.id))
  method setIdentifier (identifier : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIdentifier:")
      [make_pointer_from_object identifier]) : unit)
  method setLabel (label : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLabel:")
      [make_pointer_from_object label]) : unit)
  method setColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setColor:")
      [make_pointer_from_object color]) : unit)
  method setView (view : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setView:")
      [make_pointer_from_object view]) : unit)
  method setInitialFirstResponder (view : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setInitialFirstResponder:")
      [make_pointer_from_object view]) : unit)
  method drawLabel_inRect  (shouldTruncateLabel : bool) (labelRect : NSRect.t) =
    let sel, args = (
      Objc.arg shouldTruncateLabel "drawLabel" make_bool
      ++ Objc.arg labelRect "inRect" make_rect
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method sizeOfLabel (computeMin : bool) =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "sizeOfLabel:")
      [make_bool computeMin]) : NSSize.t)
end
