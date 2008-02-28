(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedStringPropertyListParsing of NSString *)
class virtual methods_NSString = object (self)
  method virtual repr : [`NSString] Objc.id
  method propertyList =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "propertyList")[])
       : [`NSObject] Objc.id)
  method propertyListFromStringsFileFormat =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "propertyListFromStringsFileFormat")[])
       : [`NSDictionary] Objc.id))
end
