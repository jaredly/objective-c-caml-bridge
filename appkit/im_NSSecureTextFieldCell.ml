(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSecureTextFieldCell *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setEchosBullets (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEchosBullets:")
      [make_bool flag]) : unit)
  method echosBullets =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "echosBullets")[])
       : bool)
end
