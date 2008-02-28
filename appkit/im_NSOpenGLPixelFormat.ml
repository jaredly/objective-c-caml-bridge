(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSOpenGLPixelFormat *)
class virtual methods = object (self)
  method virtual repr : [`NSOpenGLPixelFormat] Objc.id
  method initWithAttributes (attribs : [`NSOpenGLPixelFormatAttribute] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithAttributes:")
      [make_pointer_from_object attribs]) : [`NSObject] Objc.id)
  method initWithData (attribs : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object attribs]) : [`NSObject] Objc.id)
  method attributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributes")[])
       : [`NSData] Objc.id))
  method setAttributes (attribs : [`NSData] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributes:")
      [make_pointer_from_object attribs]) : unit)
(*  UNSUPPORTED
  method getValues  ~forAttribute:(attrib : int ) ~forVirtualScreen:(screen : int ) (vals : (*pointer to long int*) unsupported) =
    let sel, args = (
      Objc.arg vals "getValues" (*pointer to long int*) unsupported
      ++ Objc.arg attrib "forAttribute" make_int
      ++ Objc.arg screen "forVirtualScreen" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method numberOfVirtualScreens =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfVirtualScreens")[])
       : int)
  method l_CGLPixelFormatObj =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_CGLPixelFormatObj")[])
       : [`void] Objc.id))
end
