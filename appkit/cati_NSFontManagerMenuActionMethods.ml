(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSFontManagerMenuActionMethods of NSFontManager *)
class virtual methods_NSFontManager = object (self)
  method virtual repr : [`NSFontManager] Objc.id
(*  UNSUPPORTED
  method fontNamed  ~hasTraits:(someTraits : (*NSFontTraitMask*) unsupported ) (fName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fName "fontNamed" make_pointer_from_object
      ++ Objc.arg someTraits "hasTraits" (*NSFontTraitMask*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
(*  UNSUPPORTED
  method availableFontNamesWithTraits (someTraits : (*NSFontTraitMask*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "availableFontNamesWithTraits:")
      [(*NSFontTraitMask*) unsupported someTraits]) : [`NSArray] Objc.id))

*)
  method addFontTrait (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addFontTrait:")
      [make_pointer_from_object sender]) : unit)
  method removeFontTrait (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeFontTrait:")
      [make_pointer_from_object sender]) : unit)
  method modifyFontViaPanel (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "modifyFontViaPanel:")
      [make_pointer_from_object sender]) : unit)
  method modifyFont (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "modifyFont:")
      [make_pointer_from_object sender]) : unit)
  method orderFrontFontPanel (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFrontFontPanel:")
      [make_pointer_from_object sender]) : unit)
  method orderFrontStylesPanel (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFrontStylesPanel:")
      [make_pointer_from_object sender]) : unit)
end
