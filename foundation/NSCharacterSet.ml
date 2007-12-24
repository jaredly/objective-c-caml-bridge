(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSRange
open NSString


external init : unit -> unit = "caml_init_NSCharacterSet"
let _ = init()
(* ENUMS *)
let _NSOpenStepUnicodeReservedBase = 62464L


let make_NSObject_of_NSCharacterSet (o : [`NSCharacterSet] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSCharacterSet *)
let class_NSCharacterSet = object
   val repr = Classes.find "NSCharacterSet"
   method _new = (Objc.objcnew repr : [`NSCharacterSet] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSCharacterSet] nativeNSObject)
   method controlCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "controlCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method whitespaceCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "whitespaceCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method whitespaceAndNewlineCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "whitespaceAndNewlineCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method decimalDigitCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "decimalDigitCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method letterCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "letterCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method lowercaseLetterCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "lowercaseLetterCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method uppercaseLetterCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "uppercaseLetterCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method nonBaseCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "nonBaseCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method alphanumericCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "alphanumericCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method decomposableCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "decomposableCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method illegalCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "illegalCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method punctuationCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "punctuationCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method capitalizedLetterCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "capitalizedLetterCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method symbolCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "symbolCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
   method characterSetWithRange (aRange : int * int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "characterSetWithRange:")[make_range aRange]) : [`NSCharacterSet] Objc.nativeNSObject)
   method characterSetWithCharactersInString (aString : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "characterSetWithCharactersInString:")[make_pointer_from_object aString]) : [`NSCharacterSet] Objc.nativeNSObject)
   method characterSetWithBitmapRepresentation (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "characterSetWithBitmapRepresentation:")[make_pointer_from_object data]) : [`NSCharacterSet] Objc.nativeNSObject)
   method characterSetWithContentsOfFile (fName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "characterSetWithContentsOfFile:")[make_pointer_from_object fName]) : [`NSCharacterSet] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSCharacterSet *)
class native_NSCharacterSet = fun (o : [`NSCharacterSet] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSCharacterSet o) as super
(*  UNSUPPORTED
   method characterIsMember (aCharacter : (*unichar*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "characterIsMember:")[(*unichar*) unsupported aCharacter]) : bool)

*)
   method bitmapRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "bitmapRepresentation:")[]) : [`NSData] Objc.nativeNSObject)
   method invertedSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "invertedSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
(*  UNSUPPORTED
   method longCharacterIsMember (theLongChar : (*UTF32Char*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "longCharacterIsMember:")[(*UTF32Char*) unsupported theLongChar]) : bool)

*)
   method isSupersetOfSet (theOtherSet : [`NSCharacterSet] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isSupersetOfSet:")[make_pointer_from_object theOtherSet]) : bool)
(*  UNSUPPORTED
   method hasMemberInPlane (thePlane : (*uint8_t*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasMemberInPlane:")[(*uint8_t*) unsupported thePlane]) : bool)

*)
end
let make_NSCharacterSet_of_NSMutableCharacterSet (o : [`NSMutableCharacterSet] nativeNSObject) = (Obj.magic o : [`NSCharacterSet] nativeNSObject)
(* Class object for NSMutableCharacterSet *)
let class_NSMutableCharacterSet = object
   val repr = Classes.find "NSMutableCharacterSet"
   method _new = (Objc.objcnew repr : [`NSMutableCharacterSet] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMutableCharacterSet] nativeNSObject)
end
(* Encapsulation for native instance of NSMutableCharacterSet *)
class native_NSMutableCharacterSet = fun (o : [`NSMutableCharacterSet] nativeNSObject) -> object (self)
   inherit native_NSCharacterSet (make_NSCharacterSet_of_NSMutableCharacterSet o) as super
   method addCharactersInRange (aRange : int * int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addCharactersInRange:")[make_range aRange]) : unit)
   method removeCharactersInRange (aRange : int * int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeCharactersInRange:")[make_range aRange]) : unit)
   method addCharactersInString (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addCharactersInString:")[make_pointer_from_object aString]) : unit)
   method removeCharactersInString (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeCharactersInString:")[make_pointer_from_object aString]) : unit)
   method formUnionWithCharacterSet (otherSet : [`NSCharacterSet] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "formUnionWithCharacterSet:")[make_pointer_from_object otherSet]) : unit)
   method formIntersectionWithCharacterSet (otherSet : [`NSCharacterSet] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "formIntersectionWithCharacterSet:")[make_pointer_from_object otherSet]) : unit)
   method invert =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "invert:")[]) : unit)
end
