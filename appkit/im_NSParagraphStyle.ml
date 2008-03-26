(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSParagraphStyle *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method lineSpacing =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "lineSpacing")[])
       : float)
  method paragraphSpacing =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "paragraphSpacing")[])
       : float)
  method alignment =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "alignment")[])
       : int)
  method headIndent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "headIndent")[])
       : float)
  method tailIndent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "tailIndent")[])
       : float)
  method firstLineHeadIndent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "firstLineHeadIndent")[])
       : float)
  method tabStops =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "tabStops")[])
       : [`NSArray] Objc.id))
  method minimumLineHeight =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "minimumLineHeight")[])
       : float)
  method maximumLineHeight =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "maximumLineHeight")[])
       : float)
  method lineBreakMode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "lineBreakMode")[])
       : int)
  method baseWritingDirection =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "baseWritingDirection")[])
       : int)
  method lineHeightMultiple =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "lineHeightMultiple")[])
       : float)
  method paragraphSpacingBefore =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "paragraphSpacingBefore")[])
       : float)
  method defaultTabInterval =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "defaultTabInterval")[])
       : float)
  method textBlocks =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textBlocks")[])
       : [`NSArray] Objc.id))
  method textLists =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textLists")[])
       : [`NSArray] Objc.id))
  method hyphenationFactor =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "hyphenationFactor")[])
       : float)
  method tighteningFactorForTruncation =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "tighteningFactorForTruncation")[])
       : float)
  method headerLevel =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "headerLevel")[])
       : int)
end
