(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSCarbonExtensions of NSWindow *)
class virtual methods_NSWindow = object (self)
  method virtual repr : [`NSWindow] Objc.id
  method initWithWindowRef (windowRef : [`void] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithWindowRef:")
      [make_pointer_from_object windowRef]) : [`NSWindow] Objc.id))
  method windowRef =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowRef")[])
       : [`void] Objc.id))
end
