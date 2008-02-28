(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFontManager *)
class virtual methods = object (self)
  method virtual repr : [`NSFontManager] Objc.id
  method isMultiple =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isMultiple")[])
       : bool)
  method selectedFont =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedFont")[])
       : [`NSFont] Objc.id))
  method setSelectedFont  ~isMultiple:(flag : bool ) (fontObj : [`NSFont] Objc.t) =
    let sel, args = (
      Objc.arg fontObj "setSelectedFont" make_pointer_from_object
      ++ Objc.arg flag "isMultiple" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setFontMenu (newMenu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFontMenu:")
      [make_pointer_from_object newMenu]) : unit)
  method fontMenu (create : bool) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontMenu:")
      [make_bool create]) : [`NSMenu] Objc.id))
  method fontPanel (create : bool) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontPanel:")
      [make_bool create]) : [`NSFontPanel] Objc.id))
(*  UNSUPPORTED
  method fontWithFamily  ~traits:(traits : (*NSFontTraitMask*) unsupported ) ~weight:(weight : int ) ~size:(size : float ) (family : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg family "fontWithFamily" make_pointer_from_object
      ++ Objc.arg traits "traits" (*NSFontTraitMask*) unsupported
      ++ Objc.arg weight "weight" make_int
      ++ Objc.arg size "size" make_float
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSFont] Objc.id))

*)
(*  UNSUPPORTED
  method traitsOfFont (fontObj : [`NSFont] Objc.t) =
    ((*NSFontTraitMask*) unsupported (Objc.invoke (*NSFontTraitMask*) Objc.tag_unsupported self#repr (Selector.find "traitsOfFont:")
      [make_pointer_from_object fontObj]) : (*NSFontTraitMask*) unsupported)

*)
  method weightOfFont (fontObj : [`NSFont] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "weightOfFont:")
      [make_pointer_from_object fontObj]) : int)
  method availableFonts =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "availableFonts")[])
       : [`NSArray] Objc.id))
  method availableFontFamilies =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "availableFontFamilies")[])
       : [`NSArray] Objc.id))
  method availableMembersOfFontFamily (fam : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "availableMembersOfFontFamily:")
      [make_pointer_from_object fam]) : [`NSArray] Objc.id))
  (* skipping selector convertFont *)
  method convertFont  ?toSize:(size : float option) (fontObj : [`NSFont] Objc.t) =
    let sel, args = (
      Objc.arg fontObj "convertFont" make_pointer_from_object
      ++ Objc.opt_arg size "toSize" make_float
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSFont] Objc.id))
  (* skipping selector convertFont:toFace *)
  (* skipping selector convertFont:toFamily *)
  (* skipping selector convertFont:toHaveTrait *)
  (* skipping selector convertFont:toNotHaveTrait *)
  method convertWeight  ~ofFont:(fontObj : [`NSFont] Objc.t ) (upFlag : bool) =
    let sel, args = (
      Objc.arg upFlag "convertWeight" make_bool
      ++ Objc.arg fontObj "ofFont" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSFont] Objc.id))
  method isEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEnabled")[])
       : bool)
  method setEnabled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEnabled:")
      [make_bool flag]) : unit)
  method action =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "action")[])
       : selector)
  method setAction (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAction:")
      [make_selector aSelector]) : unit)
  method sendAction =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "sendAction")[])
       : bool)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method localizedNameForFamily  ~face:(faceKey : [`NSString] Objc.t ) (family : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg family "localizedNameForFamily" make_pointer_from_object
      ++ Objc.arg faceKey "face" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method setSelectedAttributes  ~isMultiple:(flag : bool ) (attributes : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg attributes "setSelectedAttributes" make_pointer_from_object
      ++ Objc.arg flag "isMultiple" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method convertAttributes (attributes : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "convertAttributes:")
      [make_pointer_from_object attributes]) : [`NSDictionary] Objc.id))
  method availableFontNamesMatchingFontDescriptor (descriptor : [`NSFontDescriptor] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "availableFontNamesMatchingFontDescriptor:")
      [make_pointer_from_object descriptor]) : [`NSArray] Objc.id))
  method collectionNames =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "collectionNames")[])
       : [`NSArray] Objc.id))
  method fontDescriptorsInCollection (collectionNames : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontDescriptorsInCollection:")
      [make_pointer_from_object collectionNames]) : [`NSArray] Objc.id))
  method addCollection  ~options:(collectionOptions : int ) (collectionName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg collectionName "addCollection" make_pointer_from_object
      ++ Objc.arg collectionOptions "options" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method removeCollection (collectionName : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "removeCollection:")
      [make_pointer_from_object collectionName]) : bool)
  method addFontDescriptors  ~toCollection:(collectionName : [`NSString] Objc.t ) (descriptors : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg descriptors "addFontDescriptors" make_pointer_from_object
      ++ Objc.arg collectionName "toCollection" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeFontDescriptor  ~fromCollection:(collection : [`NSString] Objc.t ) (descriptor : [`NSFontDescriptor] Objc.t) =
    let sel, args = (
      Objc.arg descriptor "removeFontDescriptor" make_pointer_from_object
      ++ Objc.arg collection "fromCollection" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
