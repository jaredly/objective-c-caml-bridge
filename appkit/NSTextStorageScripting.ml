open Objc
open NSTextStorage


external init : unit -> unit = "caml_init_NSTextStorageScripting"
let _ = init()
(* Class object for NSTextStorage *)
let class_NSTextStorage = object
   val o = Classes.find "NSTextStorage"
   method _new = (Objc.objcnew o : [`NSTextStorage] nativeNSObject)
(* methods for category Scripting *)
end
(* Encapsulation for native instance of NSTextStorage *)
class native_NSTextStorage = fun (o : [`NSTextStorage] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category Scripting *)
   method attributeRuns =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributeRuns:")[]) : [`NSArray] Objc.nativeNSObject)
   method setAttributeRuns (attributeRuns : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAttributeRuns:")[make_pointer_from_object attributeRuns]) : unit)
   method paragraphs =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "paragraphs:")[]) : [`NSArray] Objc.nativeNSObject)
   method setParagraphs (paragraphs : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setParagraphs:")[make_pointer_from_object paragraphs]) : unit)
   method words =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "words:")[]) : [`NSArray] Objc.nativeNSObject)
   method setWords (words : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setWords:")[make_pointer_from_object words]) : unit)
   method characters =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "characters:")[]) : [`NSArray] Objc.nativeNSObject)
   method setCharacters (characters : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCharacters:")[make_pointer_from_object characters]) : unit)
   method font =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "font:")[]) : [`NSFont] Objc.nativeNSObject)
   method setFont (font : [`NSFont] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFont:")[make_pointer_from_object font]) : unit)
   method foregroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "foregroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setForegroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setForegroundColor:")[make_pointer_from_object color]) : unit)
end
