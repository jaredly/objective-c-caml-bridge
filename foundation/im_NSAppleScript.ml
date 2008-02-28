(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSAppleScript *)
class virtual methods = object (self)
  method virtual repr : [`NSAppleScript] Objc.id
(*  UNSUPPORTED
  method initWithContentsOfURL  ~error:(errorInfo : (*pointer to pointer to NSDictionary*) unsupported ) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "initWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg errorInfo "error" (*pointer to pointer to NSDictionary*) unsupported
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method initWithSource (source : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithSource:")
      [make_pointer_from_object source]) : [`NSObject] Objc.id)
  method source =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "source")[])
       : [`NSString] Objc.id))
  method isCompiled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isCompiled")[])
       : bool)
(*  UNSUPPORTED
  method compileAndReturnError (errorInfo : (*pointer to pointer to NSDictionary*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "compileAndReturnError:")
      [(*pointer to pointer to NSDictionary*) unsupported errorInfo]) : bool)

*)
(*  UNSUPPORTED
  method executeAndReturnError (errorInfo : (*pointer to pointer to NSDictionary*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "executeAndReturnError:")
      [(*pointer to pointer to NSDictionary*) unsupported errorInfo]) : [`NSAppleEventDescriptor] Objc.id))

*)
(*  UNSUPPORTED
  method executeAppleEvent  ~error:(errorInfo : (*pointer to pointer to NSDictionary*) unsupported ) (event : [`NSAppleEventDescriptor] Objc.t) =
    let sel, args = (
      Objc.arg event "executeAppleEvent" make_pointer_from_object
      ++ Objc.arg errorInfo "error" (*pointer to pointer to NSDictionary*) unsupported
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSAppleEventDescriptor] Objc.id))

*)
end
