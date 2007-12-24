(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry
open NSBundle
open NSGraphics
open NSBitmapImageRep


external init : unit -> unit = "caml_init_NSImage"
let _ = init()
let make_NSObject_of_NSImage (o : [`NSImage] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSImage *)
let class_NSImage = object
   val repr = Classes.find "NSImage"
   method _new = (Objc.objcnew repr : [`NSImage] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSImage] nativeNSObject)
(* methods for category NSWindowsExtensions *)
   method imageNamed (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "imageNamed:")[make_pointer_from_object name]) : [`NSImage] Objc.nativeNSObject)
   method imageUnfilteredFileTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "imageUnfilteredFileTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method imageUnfilteredPasteboardTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "imageUnfilteredPasteboardTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method imageFileTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "imageFileTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method imagePasteboardTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "imagePasteboardTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method canInitWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "canInitWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSImage] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSImage *)
class native_NSImage = fun (o : [`NSImage] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSImage o) as super
(* methods for category NSWindowsExtensions *)
   method initWithIconHandle (icon : [`void] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithIconHandle:")[make_pointer_from_object icon]) : [`NSObject] Objc.nativeNSObject)
   method initWithBitmapHandle (bitmap : [`void] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithBitmapHandle:")[make_pointer_from_object bitmap]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method initWithSize (aSize : (*NSSize*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithSize:")[(*NSSize*) unsupported aSize]) : [`NSObject] Objc.nativeNSObject)

*)
   method initWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithData:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfFile (fileName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithContentsOfFile:")[make_pointer_from_object fileName]) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfURL (url : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithContentsOfURL:")[make_pointer_from_object url]) : [`NSObject] Objc.nativeNSObject)
   method initByReferencingFile (fileName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initByReferencingFile:")[make_pointer_from_object fileName]) : [`NSObject] Objc.nativeNSObject)
   method initByReferencingURL (url : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initByReferencingURL:")[make_pointer_from_object url]) : [`NSObject] Objc.nativeNSObject)
   method initWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method setSize (aSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSize:")[(*NSSize*) unsupported aSize]) : unit)

*)
(*  UNSUPPORTED
   method size =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "size:")[]) : (*NSSize*) unsupported)

*)
   method setName (string : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "setName:")[make_pointer_from_object string]) : bool)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method setScalesWhenResized (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setScalesWhenResized:")[make_bool flag]) : unit)
   method scalesWhenResized =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scalesWhenResized:")[]) : bool)
   method setDataRetained (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDataRetained:")[make_bool flag]) : unit)
   method isDataRetained =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isDataRetained:")[]) : bool)
   method setCachedSeparately (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCachedSeparately:")[make_bool flag]) : unit)
   method isCachedSeparately =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isCachedSeparately:")[]) : bool)
   method setCacheDepthMatchesImageDepth (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCacheDepthMatchesImageDepth:")[make_bool flag]) : unit)
   method cacheDepthMatchesImageDepth =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "cacheDepthMatchesImageDepth:")[]) : bool)
   method setBackgroundColor (aColor : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBackgroundColor:")[make_pointer_from_object aColor]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setUsesEPSOnResolutionMismatch (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setUsesEPSOnResolutionMismatch:")[make_bool flag]) : unit)
   method usesEPSOnResolutionMismatch =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "usesEPSOnResolutionMismatch:")[]) : bool)
   method setPrefersColorMatch (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPrefersColorMatch:")[make_bool flag]) : unit)
   method prefersColorMatch =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "prefersColorMatch:")[]) : bool)
   method setMatchesOnMultipleResolution (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMatchesOnMultipleResolution:")[make_bool flag]) : unit)
   method matchesOnMultipleResolution =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "matchesOnMultipleResolution:")[]) : bool)
   (* skipping selector dissolveToPoint:fraction *)
(*  UNSUPPORTED
   method dissolveToPoint  ~fromRect:(rect : (*NSRect*) unsupported ) ~fraction:(aFloat : float ) (point : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg point "dissolveToPoint" (*NSPoint*) unsupported
       ++ Objc.arg rect "fromRect" (*NSRect*) unsupported
       ++ Objc.arg aFloat "fraction" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   (* skipping selector compositeToPoint:operation *)
   (* skipping selector compositeToPoint:fromRect:operation *)
   (* skipping selector compositeToPoint:operation:fraction *)
(*  UNSUPPORTED
   method compositeToPoint  ?fromRect:(rect : (*NSRect*) unsupported option) ?operation:(op : int option) ?fraction:(delta : float option) (point : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg point "compositeToPoint" (*NSPoint*) unsupported
       ++ Objc.opt_arg rect "fromRect" (*NSRect*) unsupported
       ++ Objc.opt_arg op "operation" make_int
       ++ Objc.opt_arg delta "fraction" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method drawAtPoint  ~fromRect:(fromRect : (*NSRect*) unsupported ) ~operation:(op : int ) ~fraction:(delta : float ) (point : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg point "drawAtPoint" (*NSPoint*) unsupported
       ++ Objc.arg fromRect "fromRect" (*NSRect*) unsupported
       ++ Objc.arg op "operation" make_int
       ++ Objc.arg delta "fraction" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method drawInRect  ~fromRect:(fromRect : (*NSRect*) unsupported ) ~operation:(op : int ) ~fraction:(delta : float ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "drawInRect" (*NSRect*) unsupported
       ++ Objc.arg fromRect "fromRect" (*NSRect*) unsupported
       ++ Objc.arg op "operation" make_int
       ++ Objc.arg delta "fraction" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method drawRepresentation  ~inRect:(rect : (*NSRect*) unsupported ) (imageRep : [`NSImageRep] Objc.t) =
     let sel, args = (
       Objc.arg imageRep "drawRepresentation" make_pointer_from_object
       ++ Objc.arg rect "inRect" (*NSRect*) unsupported
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
   method recache =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "recache:")[]) : unit)
   method l_TIFFRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_TIFFRepresentation:")[]) : [`NSData] Objc.nativeNSObject)
   method l_TIFFRepresentationUsingCompression  ~factor:(aFloat : float ) (comp : int) =
     let sel, args = (
       Objc.arg comp "l_TIFFRepresentationUsingCompression" make_int
       ++ Objc.arg aFloat "factor" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)
   method representations =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "representations:")[]) : [`NSArray] Objc.nativeNSObject)
   method addRepresentations (imageReps : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addRepresentations:")[make_pointer_from_object imageReps]) : unit)
   method addRepresentation (imageRep : [`NSImageRep] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addRepresentation:")[make_pointer_from_object imageRep]) : unit)
   method removeRepresentation (imageRep : [`NSImageRep] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeRepresentation:")[make_pointer_from_object imageRep]) : unit)
   method isValid =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isValid:")[]) : bool)
   method lockFocus =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "lockFocus:")[]) : unit)
   method lockFocusOnRepresentation (imageRepresentation : [`NSImageRep] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "lockFocusOnRepresentation:")[make_pointer_from_object imageRepresentation]) : unit)
   method unlockFocus =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "unlockFocus:")[]) : unit)
   method bestRepresentationForDevice (deviceDescription : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "bestRepresentationForDevice:")[make_pointer_from_object deviceDescription]) : [`NSImageRep] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setFlipped (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFlipped:")[make_bool flag]) : unit)
   method isFlipped =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isFlipped:")[]) : bool)
   method cancelIncrementalLoad =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "cancelIncrementalLoad:")[]) : unit)
   method setCacheMode (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCacheMode:")[make_int mode]) : unit)
   method cacheMode =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "cacheMode:")[]) : int)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSImageDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSImageDelegate *)
(*  UNSUPPORTED
   method imageDidNotDraw  ~inRect:(aRect : (*NSRect*) unsupported ) (sender : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg sender "imageDidNotDraw" make_pointer_from_object
       ++ Objc.arg aRect "inRect" (*NSRect*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSImage] Objc.nativeNSObject)

*)
   (* skipping selector image:willLoadRepresentation *)
   (* skipping selector image:didLoadRepresentationHeader *)
   method image  ?didLoadPartOfRepresentation:(rep : [`NSImageRep] Objc.t option) ?withValidRows:(rows : int option) (image : [`NSImage] Objc.t) =
     let sel, args = (
       Objc.arg image "image" make_pointer_from_object
       ++ Objc.opt_arg rep "didLoadPartOfRepresentation" make_pointer_from_object
       ++ Objc.opt_arg rows "withValidRows" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector image:didLoadRepresentation:withStatus *)
end
(* Class object for NSBundle *)
let class_NSBundle = object
   val repr = Classes.find "NSBundle"
   method _new = (Objc.objcnew repr : [`NSBundle] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSBundle] nativeNSObject)
(* methods for category NSBundleImageExtension *)
end
(* Encapsulation for native instance of NSBundle *)
class native_NSBundle = fun (o : [`NSBundle] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSBundleImageExtension *)
   method pathForImageResource (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "pathForImageResource:")[make_pointer_from_object name]) : [`NSString] Objc.nativeNSObject)
end
