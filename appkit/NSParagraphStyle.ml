(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSText


external init : unit -> unit = "caml_init_NSParagraphStyle"
let _ = init()
let make_NSObject_of_NSTextTab (o : [`NSTextTab] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSTextTab *)
let class_NSTextTab = object
   val repr = Classes.find "NSTextTab"
   method _new = (Objc.objcnew repr : [`NSTextTab] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTextTab] nativeNSObject)
end
(* Encapsulation for native instance of NSTextTab *)
class native_NSTextTab = fun (o : [`NSTextTab] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSTextTab o) as super
(*  UNSUPPORTED
   method initWithTextAlignment  ~location:(loc : float ) ~options:(options : [`NSDictionary] Objc.t ) (alignment : (*NSTextAlignment*) unsupported) =
     let sel, args = (
       Objc.arg alignment "initWithTextAlignment" (*NSTextAlignment*) unsupported
       ++ Objc.arg loc "location" make_float
       ++ Objc.arg options "options" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method alignment =
     ((*NSTextAlignment*) unsupported (Objc.invoke (*NSTextAlignment*) Objc.tag_unsupported repr (Selector.find "alignment:")[]) : (*NSTextAlignment*) unsupported)

*)
   method options =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "options:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method initWithType  ~location:(loc : float ) (_type : int) =
     let sel, args = (
       Objc.arg _type "initWithType" make_int
       ++ Objc.arg loc "location" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method location =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "location:")[]) : float)
   method tabStopType =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "tabStopType:")[]) : int)
end
let make_NSObject_of_NSParagraphStyle (o : [`NSParagraphStyle] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSParagraphStyle *)
let class_NSParagraphStyle = object
   val repr = Classes.find "NSParagraphStyle"
   method _new = (Objc.objcnew repr : [`NSParagraphStyle] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSParagraphStyle] nativeNSObject)
   method defaultParagraphStyle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultParagraphStyle:")[]) : [`NSParagraphStyle] Objc.nativeNSObject)
   method defaultWritingDirectionForLanguage (languageName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultWritingDirectionForLanguage:")[make_pointer_from_object languageName]) : [`NSParagraphStyle] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSParagraphStyle *)
class native_NSParagraphStyle = fun (o : [`NSParagraphStyle] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSParagraphStyle o) as super
   method lineSpacing =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "lineSpacing:")[]) : float)
   method paragraphSpacing =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "paragraphSpacing:")[]) : float)
(*  UNSUPPORTED
   method alignment =
     ((*NSTextAlignment*) unsupported (Objc.invoke (*NSTextAlignment*) Objc.tag_unsupported repr (Selector.find "alignment:")[]) : (*NSTextAlignment*) unsupported)

*)
   method headIndent =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "headIndent:")[]) : float)
   method tailIndent =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "tailIndent:")[]) : float)
   method firstLineHeadIndent =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "firstLineHeadIndent:")[]) : float)
   method tabStops =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "tabStops:")[]) : [`NSArray] Objc.nativeNSObject)
   method minimumLineHeight =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "minimumLineHeight:")[]) : float)
   method maximumLineHeight =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "maximumLineHeight:")[]) : float)
   method lineBreakMode =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "lineBreakMode:")[]) : int)
(*  UNSUPPORTED
   method baseWritingDirection =
     ((*NSWritingDirection*) unsupported (Objc.invoke (*NSWritingDirection*) Objc.tag_unsupported repr (Selector.find "baseWritingDirection:")[]) : (*NSWritingDirection*) unsupported)

*)
   method lineHeightMultiple =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "lineHeightMultiple:")[]) : float)
   method paragraphSpacingBefore =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "paragraphSpacingBefore:")[]) : float)
   method defaultTabInterval =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "defaultTabInterval:")[]) : float)
   method textBlocks =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "textBlocks:")[]) : [`NSArray] Objc.nativeNSObject)
   method textLists =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "textLists:")[]) : [`NSArray] Objc.nativeNSObject)
   method hyphenationFactor =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "hyphenationFactor:")[]) : float)
   method tighteningFactorForTruncation =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "tighteningFactorForTruncation:")[]) : float)
   method headerLevel =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "headerLevel:")[]) : int)
end
let make_NSParagraphStyle_of_NSMutableParagraphStyle (o : [`NSMutableParagraphStyle] nativeNSObject) = (Obj.magic o : [`NSParagraphStyle] nativeNSObject)
(* Class object for NSMutableParagraphStyle *)
let class_NSMutableParagraphStyle = object
   val repr = Classes.find "NSMutableParagraphStyle"
   method _new = (Objc.objcnew repr : [`NSMutableParagraphStyle] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMutableParagraphStyle] nativeNSObject)
end
(* Encapsulation for native instance of NSMutableParagraphStyle *)
class native_NSMutableParagraphStyle = fun (o : [`NSMutableParagraphStyle] nativeNSObject) -> object (self)
   inherit native_NSParagraphStyle (make_NSParagraphStyle_of_NSMutableParagraphStyle o) as super
   method setLineSpacing (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLineSpacing:")[make_float aFloat]) : unit)
   method setParagraphSpacing (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setParagraphSpacing:")[make_float aFloat]) : unit)
(*  UNSUPPORTED
   method setAlignment (alignment : (*NSTextAlignment*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAlignment:")[(*NSTextAlignment*) unsupported alignment]) : unit)

*)
   method setFirstLineHeadIndent (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFirstLineHeadIndent:")[make_float aFloat]) : unit)
   method setHeadIndent (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHeadIndent:")[make_float aFloat]) : unit)
   method setTailIndent (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTailIndent:")[make_float aFloat]) : unit)
   method setLineBreakMode (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLineBreakMode:")[make_int mode]) : unit)
   method setMinimumLineHeight (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMinimumLineHeight:")[make_float aFloat]) : unit)
   method setMaximumLineHeight (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMaximumLineHeight:")[make_float aFloat]) : unit)
   method addTabStop (anObject : [`NSTextTab] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addTabStop:")[make_pointer_from_object anObject]) : unit)
   method removeTabStop (anObject : [`NSTextTab] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeTabStop:")[make_pointer_from_object anObject]) : unit)
   method setTabStops (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTabStops:")[make_pointer_from_object array]) : unit)
   method setParagraphStyle (obj : [`NSParagraphStyle] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setParagraphStyle:")[make_pointer_from_object obj]) : unit)
(*  UNSUPPORTED
   method setBaseWritingDirection (writingDirection : (*NSWritingDirection*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBaseWritingDirection:")[(*NSWritingDirection*) unsupported writingDirection]) : unit)

*)
   method setLineHeightMultiple (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLineHeightMultiple:")[make_float aFloat]) : unit)
   method setParagraphSpacingBefore (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setParagraphSpacingBefore:")[make_float aFloat]) : unit)
   method setDefaultTabInterval (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDefaultTabInterval:")[make_float aFloat]) : unit)
   method setTextBlocks (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTextBlocks:")[make_pointer_from_object array]) : unit)
   method setTextLists (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTextLists:")[make_pointer_from_object array]) : unit)
   method setHyphenationFactor (aFactor : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHyphenationFactor:")[make_float aFactor]) : unit)
   method setTighteningFactorForTruncation (aFactor : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTighteningFactorForTruncation:")[make_float aFactor]) : unit)
   method setHeaderLevel (level : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHeaderLevel:")[make_int level]) : unit)
end
