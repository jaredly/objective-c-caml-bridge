open Objc
open NSObject


external init : unit -> unit = "caml_init_NSTextList"
let _ = init()
(* Class object for NSTextList *)
let class_NSTextList = object
   val o = Classes.find "NSTextList"
   method _new = (Objc.objcnew o : [`NSTextList] nativeNSObject)
end
(* Encapsulation for native instance of NSTextList *)
class native_NSTextList = fun (o : [`NSTextList] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithMarkerFormat  ~options:(mask : int ) (format : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg format "initWithMarkerFormat" make_pointer_from_object
       ++ Objc.arg mask "options" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method markerFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "markerFormat:")[]) : [`NSString] Objc.nativeNSObject)
   method listOptions =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "listOptions:")[]) : int)
   method markerForItemNumber (itemNum : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "markerForItemNumber:")[make_int itemNum]) : [`NSString] Objc.nativeNSObject)
end
