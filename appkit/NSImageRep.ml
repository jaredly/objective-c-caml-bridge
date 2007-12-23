open Objc
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSImageRep"
let _ = init()
(* Class object for NSImageRep *)
let class_NSImageRep = object
   val o = Classes.find "NSImageRep"
   method _new = (Objc.objcnew o : [`NSImageRep] nativeNSObject)
   method registerImageRepClass (imageRepClass : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "registerImageRepClass:")[make_pointer_from_object imageRepClass]) : [`NSImageRep] Objc.nativeNSObject)
   method unregisterImageRepClass (imageRepClass : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "unregisterImageRepClass:")[make_pointer_from_object imageRepClass]) : [`NSImageRep] Objc.nativeNSObject)
   method registeredImageRepClasses =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "registeredImageRepClasses:")[]) : [`NSArray] Objc.nativeNSObject)
   method imageRepClassForFileType (_type : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepClassForFileType:")[make_pointer_from_object _type]) : [`NSImageRep] Objc.nativeNSObject)
   method imageRepClassForPasteboardType (_type : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepClassForPasteboardType:")[make_pointer_from_object _type]) : [`NSImageRep] Objc.nativeNSObject)
   method imageRepClassForData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepClassForData:")[make_pointer_from_object data]) : [`NSImageRep] Objc.nativeNSObject)
   method canInitWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "canInitWithData:")[make_pointer_from_object data]) : [`NSImageRep] Objc.nativeNSObject)
   method imageUnfilteredFileTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageUnfilteredFileTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method imageUnfilteredPasteboardTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageUnfilteredPasteboardTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method imageFileTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageFileTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method imagePasteboardTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imagePasteboardTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method canInitWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "canInitWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSImageRep] Objc.nativeNSObject)
   method imageRepsWithContentsOfFile (filename : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepsWithContentsOfFile:")[make_pointer_from_object filename]) : [`NSArray] Objc.nativeNSObject)
   method imageRepWithContentsOfFile (filename : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepWithContentsOfFile:")[make_pointer_from_object filename]) : [`NSImageRep] Objc.nativeNSObject)
   method imageRepsWithContentsOfURL (url : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepsWithContentsOfURL:")[make_pointer_from_object url]) : [`NSArray] Objc.nativeNSObject)
   method imageRepWithContentsOfURL (url : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepWithContentsOfURL:")[make_pointer_from_object url]) : [`NSImageRep] Objc.nativeNSObject)
   method imageRepsWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepsWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSArray] Objc.nativeNSObject)
   method imageRepWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSImageRep] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSImageRep *)
class native_NSImageRep = fun (o : [`NSImageRep] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method draw =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "draw:")[]) : bool)
(*  UNSUPPORTED
   method drawAtPoint (point : (*NSPoint*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "drawAtPoint:")[(*NSPoint*) unsupported point]) : bool)

*)
(*  UNSUPPORTED
   method drawInRect (rect : (*NSRect*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "drawInRect:")[(*NSRect*) unsupported rect]) : bool)

*)
(*  UNSUPPORTED
   method setSize (aSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSize:")[(*NSSize*) unsupported aSize]) : unit)

*)
(*  UNSUPPORTED
   method size =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "size:")[]) : (*NSSize*) unsupported)

*)
   method setAlpha (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAlpha:")[make_bool flag]) : unit)
   method hasAlpha =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "hasAlpha:")[]) : bool)
   method setOpaque (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setOpaque:")[make_bool flag]) : unit)
   method isOpaque =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isOpaque:")[]) : bool)
   method setColorSpaceName (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setColorSpaceName:")[make_pointer_from_object string]) : unit)
   method colorSpaceName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "colorSpaceName:")[]) : [`NSString] Objc.nativeNSObject)
   method setBitsPerSample (anInt : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBitsPerSample:")[make_int anInt]) : unit)
   method bitsPerSample =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "bitsPerSample:")[]) : int)
   method setPixelsWide (anInt : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPixelsWide:")[make_int anInt]) : unit)
   method pixelsWide =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "pixelsWide:")[]) : int)
   method setPixelsHigh (anInt : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPixelsHigh:")[make_int anInt]) : unit)
   method pixelsHigh =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "pixelsHigh:")[]) : int)
end
