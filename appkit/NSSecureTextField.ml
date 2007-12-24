(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSTextField
open NSTextFieldCell


external init : unit -> unit = "caml_init_NSSecureTextField"
let _ = init()
let make_NSTextField_of_NSSecureTextField (o : [`NSSecureTextField] nativeNSObject) = (Obj.magic o : [`NSTextField] nativeNSObject)
(* Class object for NSSecureTextField *)
let class_NSSecureTextField = object
   val repr = Classes.find "NSSecureTextField"
   method _new = (Objc.objcnew repr : [`NSSecureTextField] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSecureTextField] nativeNSObject)
end
(* Encapsulation for native instance of NSSecureTextField *)
class native_NSSecureTextField = fun (o : [`NSSecureTextField] nativeNSObject) -> object (self)
   inherit native_NSTextField (make_NSTextField_of_NSSecureTextField o) as super
end
let make_NSTextFieldCell_of_NSSecureTextFieldCell (o : [`NSSecureTextFieldCell] nativeNSObject) = (Obj.magic o : [`NSTextFieldCell] nativeNSObject)
(* Class object for NSSecureTextFieldCell *)
let class_NSSecureTextFieldCell = object
   val repr = Classes.find "NSSecureTextFieldCell"
   method _new = (Objc.objcnew repr : [`NSSecureTextFieldCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSecureTextFieldCell] nativeNSObject)
end
(* Encapsulation for native instance of NSSecureTextFieldCell *)
class native_NSSecureTextFieldCell = fun (o : [`NSSecureTextFieldCell] nativeNSObject) -> object (self)
   inherit native_NSTextFieldCell (make_NSTextFieldCell_of_NSSecureTextFieldCell o) as super
   method setEchosBullets (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEchosBullets:")[make_bool flag]) : unit)
   method echosBullets =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "echosBullets:")[]) : bool)
end
