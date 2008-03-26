(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSScriptClassDescription of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method classCode =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "classCode")[])
       : int64)
  method className =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "className")[])
       : [`NSString] Objc.id))
end
