(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFontManager *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method isMultiple =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isMultiple")[])
       : bool)
  method selectedFont =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedFont")[])
       : [`NSFont] Objc.id))
  method setSelectedFont_isMultiple  (fontObj : [`NSFont] Objc.t) (flag : bool) =
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
  method fontWithFamily_traits_weight_size  (family : [`NSString] Objc.t) (traits : (*NSFontTraitMask*) unsupported) (weight : int) (size : float) =
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
  method convertFont (fontObj : [`NSFont] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "convertFont:")
      [make_pointer_from_object fontObj]) : [`NSFont] Objc.id))
  method convertFont_toSize  (fontObj : [`NSFont] Objc.t) (size : float) =
    let sel, args = (
      Objc.arg fontObj "convertFont" make_pointer_from_object
      ++ Objc.arg size "toSize" make_float
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSFont] Objc.id))
  method convertFont_toFace  (fontObj : [`NSFont] Objc.t) (typeface : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fontObj "convertFont" make_pointer_from_object
      ++ Objc.arg typeface "toFace" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSFont] Objc.id))
  method convertFont_toFamily  (fontObj : [`NSFont] Objc.t) (family : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fontObj "convertFont" make_pointer_from_object
      ++ Objc.arg family "toFamily" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSFont] Objc.id))
(*  UNSUPPORTED
  method convertFont_toHaveTrait  (fontObj : [`NSFont] Objc.t) (trait : (*NSFontTraitMask*) unsupported) =
    let sel, args = (
      Objc.arg fontObj "convertFont" make_pointer_from_object
      ++ Objc.arg trait "toHaveTrait" (*NSFontTraitMask*) unsupported
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSFont] Objc.id))

*)
(*  UNSUPPORTED
  method convertFont_toNotHaveTrait  (fontObj : [`NSFont] Objc.t) (trait : (*NSFontTraitMask*) unsupported) =
    let sel, args = (
      Objc.arg fontObj "convertFont" make_pointer_from_object
      ++ Objc.arg trait "toNotHaveTrait" (*NSFontTraitMask*) unsupported
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSFont] Objc.id))

*)
  method convertWeight_ofFont  (upFlag : bool) (fontObj : [`NSFont] Objc.t) =
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
  method localizedNameForFamily_face  (family : [`NSString] Objc.t) (faceKey : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg family "localizedNameForFamily" make_pointer_from_object
      ++ Objc.arg faceKey "face" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method setSelectedAttributes_isMultiple  (attributes : [`NSDictionary] Objc.t) (flag : bool) =
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
  method addCollection_options  (collectionName : [`NSString] Objc.t) (collectionOptions : int) =
    let sel, args = (
      Objc.arg collectionName "addCollection" make_pointer_from_object
      ++ Objc.arg collectionOptions "options" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method removeCollection (collectionName : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "removeCollection:")
      [make_pointer_from_object collectionName]) : bool)
  method addFontDescriptors_toCollection  (descriptors : [`NSArray] Objc.t) (collectionName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg descriptors "addFontDescriptors" make_pointer_from_object
      ++ Objc.arg collectionName "toCollection" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeFontDescriptor_fromCollection  (descriptor : [`NSFontDescriptor] Objc.t) (collection : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg descriptor "removeFontDescriptor" make_pointer_from_object
      ++ Objc.arg collection "fromCollection" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
