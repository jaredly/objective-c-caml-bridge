(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMethodSignature *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method numberOfArguments =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfArguments")[])
       : int)
  method getArgumentTypeAtIndex (index : int) =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "getArgumentTypeAtIndex:")
      [make_int index]) : string)
  method frameLength =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "frameLength")[])
       : int)
  method isOneway =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isOneway")[])
       : bool)
  method methodReturnType =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "methodReturnType")[])
       : string)
  method methodReturnLength =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "methodReturnLength")[])
       : int)
end
