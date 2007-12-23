open Objc
open NSObject
open NSText


external init : unit -> unit = "caml_init_NSParagraphStyle"
let _ = init()
(* Class object for NSParagraphStyle *)
let class_NSParagraphStyle = object
   val o = Classes.find "NSParagraphStyle"
   method _new = (Objc.objcnew o : [`NSParagraphStyle] nativeNSObject)
   method defaultParagraphStyle =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultParagraphStyle:")[]) : [`NSParagraphStyle] Objc.nativeNSObject)
   method defaultWritingDirectionForLanguage (languageName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultWritingDirectionForLanguage:")[make_pointer_from_object languageName]) : [`NSParagraphStyle] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSParagraphStyle *)
class native_NSParagraphStyle = fun (o : [`NSParagraphStyle] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method lineSpacing =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "lineSpacing:")[]) : float)
   method paragraphSpacing =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "paragraphSpacing:")[]) : float)
(*  UNSUPPORTED
   method alignment =
     ((*NSTextAlignment*) unsupported (Objc.invoke (*NSTextAlignment*) Objc.tag_unsupported o (Selector.find "alignment:")[]) : (*NSTextAlignment*) unsupported)

*)
   method headIndent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "headIndent:")[]) : float)
   method tailIndent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "tailIndent:")[]) : float)
   method firstLineHeadIndent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "firstLineHeadIndent:")[]) : float)
   method tabStops =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "tabStops:")[]) : [`NSArray] Objc.nativeNSObject)
   method minimumLineHeight =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "minimumLineHeight:")[]) : float)
   method maximumLineHeight =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "maximumLineHeight:")[]) : float)
   method lineBreakMode =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "lineBreakMode:")[]) : int)
(*  UNSUPPORTED
   method baseWritingDirection =
     ((*NSWritingDirection*) unsupported (Objc.invoke (*NSWritingDirection*) Objc.tag_unsupported o (Selector.find "baseWritingDirection:")[]) : (*NSWritingDirection*) unsupported)

*)
   method lineHeightMultiple =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "lineHeightMultiple:")[]) : float)
   method paragraphSpacingBefore =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "paragraphSpacingBefore:")[]) : float)
   method defaultTabInterval =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "defaultTabInterval:")[]) : float)
   method textBlocks =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textBlocks:")[]) : [`NSArray] Objc.nativeNSObject)
   method textLists =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textLists:")[]) : [`NSArray] Objc.nativeNSObject)
   method hyphenationFactor =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "hyphenationFactor:")[]) : float)
   method tighteningFactorForTruncation =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "tighteningFactorForTruncation:")[]) : float)
   method headerLevel =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "headerLevel:")[]) : int)
end
(* Class object for NSTextTab *)
let class_NSTextTab = object
   val o = Classes.find "NSTextTab"
   method _new = (Objc.objcnew o : [`NSTextTab] nativeNSObject)
end
(* Encapsulation for native instance of NSTextTab *)
class native_NSTextTab = fun (o : [`NSTextTab] nativeNSObject) -> object (self)
   val o = o
   method o = o
(*  UNSUPPORTED
   method initWithTextAlignment  ~location:(loc : float ) ~options:(options : [`NSDictionary] Objc.t ) (alignment : (*NSTextAlignment*) unsupported) =
     let sel, args = (
       Objc.arg alignment "initWithTextAlignment" (*NSTextAlignment*) unsupported
       ++ Objc.arg loc "location" make_float
       ++ Objc.arg options "options" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method alignment =
     ((*NSTextAlignment*) unsupported (Objc.invoke (*NSTextAlignment*) Objc.tag_unsupported o (Selector.find "alignment:")[]) : (*NSTextAlignment*) unsupported)

*)
   method options =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "options:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method initWithType  ~location:(loc : float ) (_type : int) =
     let sel, args = (
       Objc.arg _type "initWithType" make_int
       ++ Objc.arg loc "location" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method location =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "location:")[]) : float)
   method tabStopType =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "tabStopType:")[]) : int)
end
(* Class object for NSMutableParagraphStyle *)
let class_NSMutableParagraphStyle = object
   val o = Classes.find "NSMutableParagraphStyle"
   method _new = (Objc.objcnew o : [`NSMutableParagraphStyle] nativeNSObject)
end
(* Encapsulation for native instance of NSMutableParagraphStyle *)
class native_NSMutableParagraphStyle = fun (o : [`NSMutableParagraphStyle] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setLineSpacing (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLineSpacing:")[make_float aFloat]) : unit)
   method setParagraphSpacing (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setParagraphSpacing:")[make_float aFloat]) : unit)
(*  UNSUPPORTED
   method setAlignment (alignment : (*NSTextAlignment*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAlignment:")[(*NSTextAlignment*) unsupported alignment]) : unit)

*)
   method setFirstLineHeadIndent (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFirstLineHeadIndent:")[make_float aFloat]) : unit)
   method setHeadIndent (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHeadIndent:")[make_float aFloat]) : unit)
   method setTailIndent (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTailIndent:")[make_float aFloat]) : unit)
   method setLineBreakMode (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLineBreakMode:")[make_int mode]) : unit)
   method setMinimumLineHeight (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinimumLineHeight:")[make_float aFloat]) : unit)
   method setMaximumLineHeight (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMaximumLineHeight:")[make_float aFloat]) : unit)
   method addTabStop (anObject : [`NSTextTab] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addTabStop:")[make_pointer_from_object anObject]) : unit)
   method removeTabStop (anObject : [`NSTextTab] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeTabStop:")[make_pointer_from_object anObject]) : unit)
   method setTabStops (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTabStops:")[make_pointer_from_object array]) : unit)
   method setParagraphStyle (obj : [`NSParagraphStyle] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setParagraphStyle:")[make_pointer_from_object obj]) : unit)
(*  UNSUPPORTED
   method setBaseWritingDirection (writingDirection : (*NSWritingDirection*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBaseWritingDirection:")[(*NSWritingDirection*) unsupported writingDirection]) : unit)

*)
   method setLineHeightMultiple (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLineHeightMultiple:")[make_float aFloat]) : unit)
   method setParagraphSpacingBefore (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setParagraphSpacingBefore:")[make_float aFloat]) : unit)
   method setDefaultTabInterval (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDefaultTabInterval:")[make_float aFloat]) : unit)
   method setTextBlocks (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextBlocks:")[make_pointer_from_object array]) : unit)
   method setTextLists (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextLists:")[make_pointer_from_object array]) : unit)
   method setHyphenationFactor (aFactor : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHyphenationFactor:")[make_float aFactor]) : unit)
   method setTighteningFactorForTruncation (aFactor : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTighteningFactorForTruncation:")[make_float aFactor]) : unit)
   method setHeaderLevel (level : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHeaderLevel:")[make_int level]) : unit)
end
