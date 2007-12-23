open Objc
open NSObject


external init : unit -> unit = "caml_init_NSFontManager"
let _ = init()
(* Class object for NSFontManager *)
let class_NSFontManager = object
   val o = Classes.find "NSFontManager"
   method _new = (Objc.objcnew o : [`NSFontManager] nativeNSObject)
(* methods for category NSFontManagerMenuActionMethods *)
   method setFontPanelFactory (factoryId : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setFontPanelFactory:")[make_pointer_from_object factoryId]) : [`NSFontManager] Objc.nativeNSObject)
   method setFontManagerFactory (factoryId : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setFontManagerFactory:")[make_pointer_from_object factoryId]) : [`NSFontManager] Objc.nativeNSObject)
   method sharedFontManager =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedFontManager:")[]) : [`NSFontManager] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSFontManager *)
class native_NSFontManager = fun (o : [`NSFontManager] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSFontManagerMenuActionMethods *)
(*  UNSUPPORTED
   method fontNamed  ~hasTraits:(someTraits : (*NSFontTraitMask*) unsupported ) (fName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fName "fontNamed" make_pointer_from_object
       ++ Objc.arg someTraits "hasTraits" (*NSFontTraitMask*) unsupported
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)

*)
(*  UNSUPPORTED
   method availableFontNamesWithTraits (someTraits : (*NSFontTraitMask*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "availableFontNamesWithTraits:")[(*NSFontTraitMask*) unsupported someTraits]) : [`NSArray] Objc.nativeNSObject)

*)
   method addFontTrait (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addFontTrait:")[make_pointer_from_object sender]) : unit)
   method removeFontTrait (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeFontTrait:")[make_pointer_from_object sender]) : unit)
   method modifyFontViaPanel (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "modifyFontViaPanel:")[make_pointer_from_object sender]) : unit)
   method modifyFont (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "modifyFont:")[make_pointer_from_object sender]) : unit)
   method orderFrontFontPanel (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "orderFrontFontPanel:")[make_pointer_from_object sender]) : unit)
   method orderFrontStylesPanel (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "orderFrontStylesPanel:")[make_pointer_from_object sender]) : unit)
   method isMultiple =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isMultiple:")[]) : bool)
   method selectedFont =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedFont:")[]) : [`NSFont] Objc.nativeNSObject)
   method setSelectedFont  ~isMultiple:(flag : bool ) (fontObj : [`NSFont] Objc.t) =
     let sel, args = (
       Objc.arg fontObj "setSelectedFont" make_pointer_from_object
       ++ Objc.arg flag "isMultiple" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method setFontMenu (newMenu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFontMenu:")[make_pointer_from_object newMenu]) : unit)
   method fontMenu (create : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fontMenu:")[make_bool create]) : [`NSMenu] Objc.nativeNSObject)
   method fontPanel (create : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fontPanel:")[make_bool create]) : [`NSFontPanel] Objc.nativeNSObject)
(*  UNSUPPORTED
   method fontWithFamily  ~traits:(traits : (*NSFontTraitMask*) unsupported ) ~weight:(weight : int ) ~size:(size : float ) (family : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg family "fontWithFamily" make_pointer_from_object
       ++ Objc.arg traits "traits" (*NSFontTraitMask*) unsupported
       ++ Objc.arg weight "weight" make_int
       ++ Objc.arg size "size" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSFont] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method traitsOfFont (fontObj : [`NSFont] Objc.t) =
     ((*NSFontTraitMask*) unsupported (Objc.invoke (*NSFontTraitMask*) Objc.tag_unsupported o (Selector.find "traitsOfFont:")[make_pointer_from_object fontObj]) : (*NSFontTraitMask*) unsupported)

*)
   method weightOfFont (fontObj : [`NSFont] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "weightOfFont:")[make_pointer_from_object fontObj]) : int)
   method availableFonts =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "availableFonts:")[]) : [`NSArray] Objc.nativeNSObject)
   method availableFontFamilies =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "availableFontFamilies:")[]) : [`NSArray] Objc.nativeNSObject)
   method availableMembersOfFontFamily (fam : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "availableMembersOfFontFamily:")[make_pointer_from_object fam]) : [`NSArray] Objc.nativeNSObject)
   (* skipping selector convertFont *)
   method convertFont  ?toSize:(size : float option) (fontObj : [`NSFont] Objc.t) =
     let sel, args = (
       Objc.arg fontObj "convertFont" make_pointer_from_object
       ++ Objc.opt_arg size "toSize" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSFont] Objc.nativeNSObject)
   (* skipping selector convertFont:toFace *)
   (* skipping selector convertFont:toFamily *)
   (* skipping selector convertFont:toHaveTrait *)
   (* skipping selector convertFont:toNotHaveTrait *)
   method convertWeight  ~ofFont:(fontObj : [`NSFont] Objc.t ) (upFlag : bool) =
     let sel, args = (
       Objc.arg upFlag "convertWeight" make_bool
       ++ Objc.arg fontObj "ofFont" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSFont] Objc.nativeNSObject)
   method isEnabled =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEnabled:")[]) : bool)
   method setEnabled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setEnabled:")[make_bool flag]) : unit)
   method action =
     (get_selector (Objc.invoke Objc.tag_selector o (Selector.find "action:")[]) : selector)
   method setAction (aSelector : selector) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAction:")[make_selector aSelector]) : unit)
   method sendAction =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "sendAction:")[]) : bool)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method localizedNameForFamily  ~face:(faceKey : [`NSString] Objc.t ) (family : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg family "localizedNameForFamily" make_pointer_from_object
       ++ Objc.arg faceKey "face" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method setSelectedAttributes  ~isMultiple:(flag : bool ) (attributes : [`NSDictionary] Objc.t) =
     let sel, args = (
       Objc.arg attributes "setSelectedAttributes" make_pointer_from_object
       ++ Objc.arg flag "isMultiple" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method convertAttributes (attributes : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "convertAttributes:")[make_pointer_from_object attributes]) : [`NSDictionary] Objc.nativeNSObject)
   method availableFontNamesMatchingFontDescriptor (descriptor : [`NSFontDescriptor] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "availableFontNamesMatchingFontDescriptor:")[make_pointer_from_object descriptor]) : [`NSArray] Objc.nativeNSObject)
   method collectionNames =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "collectionNames:")[]) : [`NSArray] Objc.nativeNSObject)
   method fontDescriptorsInCollection (collectionNames : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fontDescriptorsInCollection:")[make_pointer_from_object collectionNames]) : [`NSArray] Objc.nativeNSObject)
   method addCollection  ~options:(collectionOptions : int ) (collectionName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg collectionName "addCollection" make_pointer_from_object
       ++ Objc.arg collectionOptions "options" make_int
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method removeCollection (collectionName : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "removeCollection:")[make_pointer_from_object collectionName]) : bool)
   method addFontDescriptors  ~toCollection:(collectionName : [`NSString] Objc.t ) (descriptors : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg descriptors "addFontDescriptors" make_pointer_from_object
       ++ Objc.arg collectionName "toCollection" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removeFontDescriptor  ~fromCollection:(collection : [`NSString] Objc.t ) (descriptor : [`NSFontDescriptor] Objc.t) =
     let sel, args = (
       Objc.arg descriptor "removeFontDescriptor" make_pointer_from_object
       ++ Objc.arg collection "fromCollection" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSFontManagerResponderMethod *)
(* methods for category NSFontManagerDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSFontManagerResponderMethod *)
   method changeFont (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "changeFont:")[make_pointer_from_object sender]) : unit)
(* methods for category NSFontManagerDelegate *)
   method fontManager  ~willIncludeFont:(fontName : [`NSString] Objc.t ) (sender : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg sender "fontManager" make_pointer_from_object
       ++ Objc.arg fontName "willIncludeFont" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
end
