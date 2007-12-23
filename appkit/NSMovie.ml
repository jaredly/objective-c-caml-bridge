open Objc


external init : unit -> unit = "caml_init_NSMovie"
let _ = init()
(* Class object for NSMovie *)
let class_NSMovie = object
   val o = Classes.find "NSMovie"
   method _new = (Objc.objcnew o : [`NSMovie] nativeNSObject)
   method movieUnfilteredFileTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "movieUnfilteredFileTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method movieUnfilteredPasteboardTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "movieUnfilteredPasteboardTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method canInitWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "canInitWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSMovie] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSMovie *)
class native_NSMovie = fun (o : [`NSMovie] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithMovie (movie : [`void] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithMovie:")[make_pointer_from_object movie]) : [`NSObject] Objc.nativeNSObject)
   method initWithURL  ~byReference:(byRef : bool ) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "initWithURL" make_pointer_from_object
       ++ Objc.arg byRef "byReference" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSObject] Objc.nativeNSObject)
   method l_QTMovie =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_QTMovie:")[]) : [`void] Objc.nativeNSObject)
   method l_URL =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_URL:")[]) : [`NSURL] Objc.nativeNSObject)
end
