open Objc


external init : unit -> unit = "caml_init_NSNib"
let _ = init()
(* Class object for NSNib *)
let class_NSNib = object
   val o = Classes.find "NSNib"
   method _new = (Objc.objcnew o : [`NSNib] nativeNSObject)
end
(* Encapsulation for native instance of NSNib *)
class native_NSNib = fun (o : [`NSNib] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithContentsOfURL (nibFileURL : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithContentsOfURL:")[make_pointer_from_object nibFileURL]) : [`NSObject] Objc.nativeNSObject)
   method initWithNibNamed  ~bundle:(bundle : [`NSBundle] Objc.t ) (nibName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg nibName "initWithNibNamed" make_pointer_from_object
       ++ Objc.arg bundle "bundle" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method instantiateNibWithExternalNameTable (externalNameTable : [`NSDictionary] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "instantiateNibWithExternalNameTable:")[make_pointer_from_object externalNameTable]) : bool)
(*  UNSUPPORTED
   method instantiateNibWithOwner  ~topLevelObjects:(topLevelObjects : (*pointer to pointer to NSArray*) unsupported ) (owner : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg owner "instantiateNibWithOwner" make_pointer_from_object
       ++ Objc.arg topLevelObjects "topLevelObjects" (*pointer to pointer to NSArray*) unsupported
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)

*)
end
