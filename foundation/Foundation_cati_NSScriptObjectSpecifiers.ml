(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSScriptObjectSpecifiers of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method objectSpecifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectSpecifier")[])
       : [`NSScriptObjectSpecifier] Objc.id))
  method indicesOfObjectsByEvaluatingObjectSpecifier (specifier : [`NSScriptObjectSpecifier] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "indicesOfObjectsByEvaluatingObjectSpecifier:")
      [make_pointer_from_object specifier]) : [`NSArray] Objc.id))
end
