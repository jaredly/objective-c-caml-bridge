(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSNib *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithContentsOfURL (nibFileURL : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfURL:")
      [make_pointer_from_object nibFileURL]) : [`NSObject] Objc.id)
  method initWithNibNamed_bundle  (nibName : [`NSString] Objc.t) (bundle : [`NSBundle] Objc.t) =
    let sel, args = (
      Objc.arg nibName "initWithNibNamed" make_pointer_from_object
      ++ Objc.arg bundle "bundle" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method instantiateNibWithExternalNameTable (externalNameTable : [`NSDictionary] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "instantiateNibWithExternalNameTable:")
      [make_pointer_from_object externalNameTable]) : bool)
(*  UNSUPPORTED
  method instantiateNibWithOwner_topLevelObjects  (owner : [`NSObject] Objc.t) (topLevelObjects : (*pointer to pointer to NSArray*) unsupported) =
    let sel, args = (
      Objc.arg owner "instantiateNibWithOwner" make_pointer_from_object
      ++ Objc.arg topLevelObjects "topLevelObjects" (*pointer to pointer to NSArray*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
end
