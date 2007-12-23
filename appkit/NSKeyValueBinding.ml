open Objc
open NSObject


external init : unit -> unit = "caml_init_NSKeyValueBinding"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSEditor *)
(* methods for category NSEditorRegistration *)
(* methods for category NSPlaceholders *)
   method setDefaultPlaceholder  ~forMarker:(marker : [`NSObject] Objc.t ) ~withBinding:(binding : [`NSString] Objc.t ) (placeholder : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg placeholder "setDefaultPlaceholder" make_pointer_from_object
       ++ Objc.arg marker "forMarker" make_pointer_from_object
       ++ Objc.arg binding "withBinding" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method defaultPlaceholderForMarker  ~withBinding:(binding : [`NSString] Objc.t ) (marker : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg marker "defaultPlaceholderForMarker" make_pointer_from_object
       ++ Objc.arg binding "withBinding" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSKeyValueBindingCreation *)
   method exposeBinding (binding : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "exposeBinding:")[make_pointer_from_object binding]) : [`NSObject] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSEditor *)
   method discardEditing =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "discardEditing:")[]) : unit)
   method commitEditing =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "commitEditing:")[]) : bool)
   method commitEditingWithDelegate  ~didCommitSelector:(didCommitSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (delegate : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg delegate "commitEditingWithDelegate" make_pointer_from_object
       ++ Objc.arg didCommitSelector "didCommitSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
(* methods for category NSEditorRegistration *)
   method objectDidBeginEditing (editor : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "objectDidBeginEditing:")[make_pointer_from_object editor]) : unit)
   method objectDidEndEditing (editor : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "objectDidEndEditing:")[make_pointer_from_object editor]) : unit)
(* methods for category NSPlaceholders *)
(* methods for category NSKeyValueBindingCreation *)
   method exposedBindings =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "exposedBindings:")[]) : [`NSArray] Objc.nativeNSObject)
   method valueClassForBinding (binding : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueClassForBinding:")[make_pointer_from_object binding]) : [`NSObject] Objc.nativeNSObject)
   method bind  ~toObject:(observable : [`NSObject] Objc.t ) ~withKeyPath:(keyPath : [`NSString] Objc.t ) ~options:(options : [`NSDictionary] Objc.t ) (binding : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg binding "bind" make_pointer_from_object
       ++ Objc.arg observable "toObject" make_pointer_from_object
       ++ Objc.arg keyPath "withKeyPath" make_pointer_from_object
       ++ Objc.arg options "options" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method unbind (binding : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "unbind:")[make_pointer_from_object binding]) : unit)
   method infoForBinding (binding : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "infoForBinding:")[make_pointer_from_object binding]) : [`NSDictionary] Objc.nativeNSObject)
end
