(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSTokenFieldCell
open NSTextContainer
open NSTextField


external init : unit -> unit = "caml_init_NSTokenField"
let _ = init()
let make_NSTextField_of_NSTokenField (o : [`NSTokenField] nativeNSObject) = (Obj.magic o : [`NSTextField] nativeNSObject)
(* Class object for NSTokenField *)
let class_NSTokenField = object
   val repr = Classes.find "NSTokenField"
   method _new = (Objc.objcnew repr : [`NSTokenField] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTokenField] nativeNSObject)
   method defaultCompletionDelay =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultCompletionDelay:")[]) : [`NSTokenField] Objc.nativeNSObject)
   method defaultTokenizingCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultTokenizingCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSTokenField *)
class native_NSTokenField = fun (o : [`NSTokenField] nativeNSObject) -> object (self)
   inherit native_NSTextField (make_NSTextField_of_NSTokenField o) as super
(*  UNSUPPORTED
   method setTokenStyle (style : (*NSTokenStyle*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTokenStyle:")[(*NSTokenStyle*) unsupported style]) : unit)

*)
(*  UNSUPPORTED
   method tokenStyle =
     ((*NSTokenStyle*) unsupported (Objc.invoke (*NSTokenStyle*) Objc.tag_unsupported repr (Selector.find "tokenStyle:")[]) : (*NSTokenStyle*) unsupported)

*)
   method setCompletionDelay (delay : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCompletionDelay:")[make_float delay]) : unit)
   method completionDelay =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "completionDelay:")[]) : float)
   method setTokenizingCharacterSet (characterSet : [`NSCharacterSet] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTokenizingCharacterSet:")[make_pointer_from_object characterSet]) : unit)
   method tokenizingCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "tokenizingCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSTokenFieldDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSTokenFieldDelegate *)
   method tokenField  ?completionsForSubstring:(substring : [`NSString] Objc.t option) ?indexOfToken:(tokenIndex : int option) ?indexOfSelectedItem:(selectedIndex : [`int] Objc.t option) (tokenField : [`NSTokenField] Objc.t) =
     let sel, args = (
       Objc.arg tokenField "tokenField" make_pointer_from_object
       ++ Objc.opt_arg substring "completionsForSubstring" make_pointer_from_object
       ++ Objc.opt_arg tokenIndex "indexOfToken" make_int
       ++ Objc.opt_arg selectedIndex "indexOfSelectedItem" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSArray] Objc.nativeNSObject)
   (* skipping selector tokenField:shouldAddObjects:atIndex *)
   (* skipping selector tokenField:displayStringForRepresentedObject *)
   (* skipping selector tokenField:editingStringForRepresentedObject *)
   (* skipping selector tokenField:representedObjectForEditingString *)
   (* skipping selector tokenField:writeRepresentedObjects:toPasteboard *)
   (* skipping selector tokenField:readFromPasteboard *)
   (* skipping selector tokenField:menuForRepresentedObject *)
   (* skipping selector tokenField:hasMenuForRepresentedObject *)
   (* skipping selector tokenField:styleForRepresentedObject *)
end
