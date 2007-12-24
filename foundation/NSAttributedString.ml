(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSString
open NSDictionary


external init : unit -> unit = "caml_init_NSAttributedString"
let _ = init()
let make_NSObject_of_NSAttributedString (o : [`NSAttributedString] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSAttributedString *)
let class_NSAttributedString = object
   val repr = Classes.find "NSAttributedString"
   method _new = (Objc.objcnew repr : [`NSAttributedString] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSAttributedString] nativeNSObject)
(* methods for category NSExtendedAttributedString *)
end
(* Encapsulation for native instance of NSAttributedString *)
class native_NSAttributedString = fun (o : [`NSAttributedString] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSAttributedString o) as super
(* methods for category NSExtendedAttributedString *)
   method length =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "length:")[]) : int)
   (* skipping selector attribute:atIndex:effectiveRange *)
   method attributedSubstringFromRange (range : int * int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attributedSubstringFromRange:")[make_range range]) : [`NSAttributedString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method attributesAtIndex  ~longestEffectiveRange:(range : (*NSRangePointer*) unsupported ) ~inRange:(rangeLimit : (int * int) ) (location : int) =
     let sel, args = (
       Objc.arg location "attributesAtIndex" make_int
       ++ Objc.arg range "longestEffectiveRange" (*NSRangePointer*) unsupported
       ++ Objc.arg rangeLimit "inRange" make_range
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDictionary] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method attribute  ~atIndex:(location : int ) ~longestEffectiveRange:(range : (*NSRangePointer*) unsupported ) ~inRange:(rangeLimit : (int * int) ) (attrName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg attrName "attribute" make_pointer_from_object
       ++ Objc.arg location "atIndex" make_int
       ++ Objc.arg range "longestEffectiveRange" (*NSRangePointer*) unsupported
       ++ Objc.arg rangeLimit "inRange" make_range
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method isEqualToAttributedString (other : [`NSAttributedString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEqualToAttributedString:")[make_pointer_from_object other]) : bool)
   (* skipping selector initWithString *)
   method initWithString  ?attributes:(attrs : [`NSDictionary] Objc.t option) (str : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg str "initWithString" make_pointer_from_object
       ++ Objc.opt_arg attrs "attributes" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithAttributedString (attrStr : [`NSAttributedString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithAttributedString:")[make_pointer_from_object attrStr]) : [`NSObject] Objc.nativeNSObject)
   method string =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "string:")[]) : [`NSString] Objc.nativeNSObject)
   (* skipping selector attributesAtIndex:effectiveRange *)
end
let make_NSAttributedString_of_NSMutableAttributedString (o : [`NSMutableAttributedString] nativeNSObject) = (Obj.magic o : [`NSAttributedString] nativeNSObject)
(* Class object for NSMutableAttributedString *)
let class_NSMutableAttributedString = object
   val repr = Classes.find "NSMutableAttributedString"
   method _new = (Objc.objcnew repr : [`NSMutableAttributedString] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMutableAttributedString] nativeNSObject)
(* methods for category NSExtendedMutableAttributedString *)
end
(* Encapsulation for native instance of NSMutableAttributedString *)
class native_NSMutableAttributedString = fun (o : [`NSMutableAttributedString] nativeNSObject) -> object (self)
   inherit native_NSAttributedString (make_NSAttributedString_of_NSMutableAttributedString o) as super
(* methods for category NSExtendedMutableAttributedString *)
   method mutableString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "mutableString:")[]) : [`NSMutableString] Objc.nativeNSObject)
   method addAttribute  ~value:(value : [`NSObject] Objc.t ) ~range:(range : (int * int) ) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "addAttribute" make_pointer_from_object
       ++ Objc.arg value "value" make_pointer_from_object
       ++ Objc.arg range "range" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method addAttributes  ~range:(range : (int * int) ) (attrs : [`NSDictionary] Objc.t) =
     let sel, args = (
       Objc.arg attrs "addAttributes" make_pointer_from_object
       ++ Objc.arg range "range" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeAttribute  ~range:(range : (int * int) ) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "removeAttribute" make_pointer_from_object
       ++ Objc.arg range "range" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method replaceCharactersInRange  ~withAttributedString:(attrString : [`NSAttributedString] Objc.t ) (range : int * int) =
     let sel, args = (
       Objc.arg range "replaceCharactersInRange" make_range
       ++ Objc.arg attrString "withAttributedString" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method insertAttributedString  ~atIndex:(loc : int ) (attrString : [`NSAttributedString] Objc.t) =
     let sel, args = (
       Objc.arg attrString "insertAttributedString" make_pointer_from_object
       ++ Objc.arg loc "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method appendAttributedString (attrString : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "appendAttributedString:")[make_pointer_from_object attrString]) : unit)
   method deleteCharactersInRange (range : int * int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "deleteCharactersInRange:")[make_range range]) : unit)
   method setAttributedString (attrString : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAttributedString:")[make_pointer_from_object attrString]) : unit)
   method beginEditing =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "beginEditing:")[]) : unit)
   method endEditing =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "endEditing:")[]) : unit)
   (* skipping selector replaceCharactersInRange:withString *)
   method setAttributes  ~range:(range : (int * int) ) (attrs : [`NSDictionary] Objc.t) =
     let sel, args = (
       Objc.arg attrs "setAttributes" make_pointer_from_object
       ++ Objc.arg range "range" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
