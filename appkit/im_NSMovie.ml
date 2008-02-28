(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMovie *)
class virtual methods = object (self)
  method virtual repr : [`NSMovie] Objc.id
  method initWithMovie (movie : [`void] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithMovie:")
      [make_pointer_from_object movie]) : [`NSObject] Objc.id)
  method initWithURL  ~byReference:(byRef : bool ) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "initWithURL" make_pointer_from_object
      ++ Objc.arg byRef "byReference" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithPasteboard:")
      [make_pointer_from_object pasteboard]) : [`NSObject] Objc.id)
  method l_QTMovie =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_QTMovie")[])
       : [`void] Objc.id))
  method l_URL =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_URL")[])
       : [`NSURL] Objc.id))
end
