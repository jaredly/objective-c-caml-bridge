(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSStandardAboutPanel of NSApplication *)
class virtual methods_NSApplication = object (self)
  method virtual repr : [`NSObject] Objc.id
  method orderFrontStandardAboutPanel (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFrontStandardAboutPanel:")
      [make_pointer_from_object sender]) : unit)
  method orderFrontStandardAboutPanelWithOptions (optionsDictionary : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFrontStandardAboutPanelWithOptions:")
      [make_pointer_from_object optionsDictionary]) : unit)
end
