(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category Scripting of NSTextStorage *)
class virtual methods_NSTextStorage = object (self)
  method virtual repr : [`NSObject] Objc.id
  method attributeRuns =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributeRuns")[])
       : [`NSArray] Objc.id))
  method setAttributeRuns (attributeRuns : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributeRuns:")
      [make_pointer_from_object attributeRuns]) : unit)
  method paragraphs =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "paragraphs")[])
       : [`NSArray] Objc.id))
  method setParagraphs (paragraphs : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setParagraphs:")
      [make_pointer_from_object paragraphs]) : unit)
  method words =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "words")[])
       : [`NSArray] Objc.id))
  method setWords (words : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWords:")
      [make_pointer_from_object words]) : unit)
  method characters =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "characters")[])
       : [`NSArray] Objc.id))
  method setCharacters (characters : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCharacters:")
      [make_pointer_from_object characters]) : unit)
  method font =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "font")[])
       : [`NSFont] Objc.id))
  method setFont (font : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFont:")
      [make_pointer_from_object font]) : unit)
  method foregroundColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "foregroundColor")[])
       : [`NSColor] Objc.id))
  method setForegroundColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setForegroundColor:")
      [make_pointer_from_object color]) : unit)
end
