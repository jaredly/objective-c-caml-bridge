(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSValueCreation of NSValue *)
class virtual methods_NSValue = object (self)
  method virtual repr : [`NSObject] Objc.id
(*  UNSUPPORTED
  method initWithBytes_objCType  (value : (*pointer to const void*) unsupported) (_type : string) =
    let sel, args = (
      Objc.arg value "initWithBytes" (*pointer to const void*) unsupported
      ++ Objc.arg _type "objCType" make_string
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
end
