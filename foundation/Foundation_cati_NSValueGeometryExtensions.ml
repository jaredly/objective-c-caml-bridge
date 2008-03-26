(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSValueGeometryExtensions of NSValue *)
class virtual methods_NSValue = object (self)
  method virtual repr : [`NSObject] Objc.id
  method pointValue =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "pointValue")[])
       : NSPoint.t)
  method sizeValue =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "sizeValue")[])
       : NSSize.t)
  method rectValue =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "rectValue")[])
       : NSRect.t)
end
