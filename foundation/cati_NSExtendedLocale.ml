(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedLocale of NSLocale *)
class virtual methods_NSLocale = object (self)
  method virtual repr : [`NSLocale] Objc.id
  method localeIdentifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localeIdentifier")[])
       : [`NSString] Objc.id))
end
