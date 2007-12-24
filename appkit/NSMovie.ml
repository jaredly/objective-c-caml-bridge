(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject


external init : unit -> unit = "caml_init_NSMovie"
let _ = init()
let make_NSObject_of_NSMovie (o : [`NSMovie] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSMovie *)
let class_NSMovie = object
   val repr = Classes.find "NSMovie"
   method _new = (Objc.objcnew repr : [`NSMovie] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMovie] nativeNSObject)
   method movieUnfilteredFileTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "movieUnfilteredFileTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method movieUnfilteredPasteboardTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "movieUnfilteredPasteboardTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method canInitWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "canInitWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSMovie] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSMovie *)
class native_NSMovie = fun (o : [`NSMovie] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSMovie o) as super
   method initWithMovie (movie : [`void] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithMovie:")[make_pointer_from_object movie]) : [`NSObject] Objc.nativeNSObject)
   method initWithURL  ~byReference:(byRef : bool ) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "initWithURL" make_pointer_from_object
       ++ Objc.arg byRef "byReference" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSObject] Objc.nativeNSObject)
   method l_QTMovie =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_QTMovie:")[]) : [`void] Objc.nativeNSObject)
   method l_URL =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_URL:")[]) : [`NSURL] Objc.nativeNSObject)
end
