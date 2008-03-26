(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSGlyphInfo *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method glyphName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "glyphName")[])
       : [`NSString] Objc.id))
  method characterIdentifier =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "characterIdentifier")[])
       : int)
  method characterCollection =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "characterCollection")[])
       : int)
end
