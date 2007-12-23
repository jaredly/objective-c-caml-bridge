open Objc
open NSTextField
open NSTextFieldCell


external init : unit -> unit = "caml_init_NSSecureTextField"
let _ = init()
(* Class object for NSSecureTextField *)
let class_NSSecureTextField = object
   val o = Classes.find "NSSecureTextField"
   method _new = (Objc.objcnew o : [`NSSecureTextField] nativeNSObject)
end
(* Encapsulation for native instance of NSSecureTextField *)
class native_NSSecureTextField = fun (o : [`NSSecureTextField] nativeNSObject) -> object (self)
   val o = o
   method o = o
end
(* Class object for NSSecureTextFieldCell *)
let class_NSSecureTextFieldCell = object
   val o = Classes.find "NSSecureTextFieldCell"
   method _new = (Objc.objcnew o : [`NSSecureTextFieldCell] nativeNSObject)
end
(* Encapsulation for native instance of NSSecureTextFieldCell *)
class native_NSSecureTextFieldCell = fun (o : [`NSSecureTextFieldCell] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setEchosBullets (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setEchosBullets:")[make_bool flag]) : unit)
   method echosBullets =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "echosBullets:")[]) : bool)
end
