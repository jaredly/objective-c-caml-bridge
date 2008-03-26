(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSlider *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method minValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "minValue")[])
       : float)
  method setMinValue (aDouble : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinValue:")
      [make_float aDouble]) : unit)
  method maxValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "maxValue")[])
       : float)
  method setMaxValue (aDouble : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaxValue:")
      [make_float aDouble]) : unit)
  method setAltIncrementValue (incValue : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAltIncrementValue:")
      [make_float incValue]) : unit)
  method altIncrementValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "altIncrementValue")[])
       : float)
  method setTitleCell (aCell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleCell:")
      [make_pointer_from_object aCell]) : unit)
  method titleCell =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "titleCell")[])
       : [`NSObject] Objc.id)
  method setTitleColor (newColor : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleColor:")
      [make_pointer_from_object newColor]) : unit)
  method titleColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "titleColor")[])
       : [`NSColor] Objc.id))
  method setTitleFont (fontObj : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleFont:")
      [make_pointer_from_object fontObj]) : unit)
  method titleFont =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "titleFont")[])
       : [`NSFont] Objc.id))
  method title =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "title")[])
       : [`NSString] Objc.id))
  method setTitle (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitle:")
      [make_pointer_from_object aString]) : unit)
  method setKnobThickness (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setKnobThickness:")
      [make_float aFloat]) : unit)
  method knobThickness =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "knobThickness")[])
       : float)
  method setImage (backgroundImage : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImage:")
      [make_pointer_from_object backgroundImage]) : unit)
  method image =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "image")[])
       : [`NSImage] Objc.id))
  method isVertical =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "isVertical")[])
       : int)
  method acceptsFirstMouse (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "acceptsFirstMouse:")
      [make_pointer_from_object theEvent]) : bool)
end
