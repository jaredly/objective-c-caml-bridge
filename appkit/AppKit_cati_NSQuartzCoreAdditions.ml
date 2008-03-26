(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSQuartzCoreAdditions of NSGraphicsContext *)
class virtual methods_NSGraphicsContext = object (self)
  method virtual repr : [`NSObject] Objc.id
  method _CIContext =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "CIContext")[])
       : [`CIContext] Objc.id))
end
(* instance methods for category NSQuartzCoreAdditions of NSColor *)
class virtual methods_NSColor = object (self)
  method virtual repr : [`NSObject] Objc.id
end
