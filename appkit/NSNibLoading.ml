open Objc
open NSBundle


external init : unit -> unit = "caml_init_NSNibLoading"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSNibAwaking *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSNibAwaking *)
   method awakeFromNib =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "awakeFromNib:")[]) : unit)
end
(* Class object for NSBundle *)
let class_NSBundle = object
   val o = Classes.find "NSBundle"
   method _new = (Objc.objcnew o : [`NSBundle] nativeNSObject)
(* methods for category NSNibLoading *)
   method loadNibFile  ~externalNameTable:(context : [`NSDictionary] Objc.t ) ~withZone:(zone : [`NSZone] Objc.t ) (fileName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fileName "loadNibFile" make_pointer_from_object
       ++ Objc.arg context "externalNameTable" make_pointer_from_object
       ++ Objc.arg zone "withZone" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSBundle] Objc.nativeNSObject)
   method loadNibNamed  ~owner:(owner : [`NSObject] Objc.t ) (nibName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg nibName "loadNibNamed" make_pointer_from_object
       ++ Objc.arg owner "owner" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSBundle] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSBundle *)
class native_NSBundle = fun (o : [`NSBundle] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSNibLoading *)
   method loadNibFile  ~externalNameTable:(context : [`NSDictionary] Objc.t ) ~withZone:(zone : [`NSZone] Objc.t ) (fileName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fileName "loadNibFile" make_pointer_from_object
       ++ Objc.arg context "externalNameTable" make_pointer_from_object
       ++ Objc.arg zone "withZone" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
end
