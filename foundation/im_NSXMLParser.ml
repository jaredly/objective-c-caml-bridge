(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSXMLParser *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithContentsOfURL (url : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSObject] Objc.id)
  method initWithData (data : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object data]) : [`NSObject] Objc.id)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method setShouldProcessNamespaces (shouldProcessNamespaces : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShouldProcessNamespaces:")
      [make_bool shouldProcessNamespaces]) : unit)
  method setShouldReportNamespacePrefixes (shouldReportNamespacePrefixes : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShouldReportNamespacePrefixes:")
      [make_bool shouldReportNamespacePrefixes]) : unit)
  method setShouldResolveExternalEntities (shouldResolveExternalEntities : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShouldResolveExternalEntities:")
      [make_bool shouldResolveExternalEntities]) : unit)
  method shouldProcessNamespaces =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldProcessNamespaces")[])
       : bool)
  method shouldReportNamespacePrefixes =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldReportNamespacePrefixes")[])
       : bool)
  method shouldResolveExternalEntities =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldResolveExternalEntities")[])
       : bool)
  method parse =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "parse")[])
       : bool)
  method abortParsing =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "abortParsing")[])
       : unit)
  method parserError =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "parserError")[])
       : [`NSError] Objc.id))
end
