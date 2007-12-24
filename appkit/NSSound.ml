(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSBundle


external init : unit -> unit = "caml_init_NSSound"
let _ = init()
let make_NSObject_of_NSSound (o : [`NSSound] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSSound *)
let class_NSSound = object
   val repr = Classes.find "NSSound"
   method _new = (Objc.objcnew repr : [`NSSound] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSound] nativeNSObject)
   method soundNamed (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "soundNamed:")[make_pointer_from_object name]) : [`NSSound] Objc.nativeNSObject)
   method canInitWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "canInitWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSSound] Objc.nativeNSObject)
   method soundUnfilteredFileTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "soundUnfilteredFileTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method soundUnfilteredPasteboardTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "soundUnfilteredPasteboardTypes:")[]) : [`NSArray] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSSound *)
class native_NSSound = fun (o : [`NSSound] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSSound o) as super
   method initWithContentsOfURL  ~byReference:(byRef : bool ) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "initWithContentsOfURL" make_pointer_from_object
       ++ Objc.arg byRef "byReference" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfFile  ~byReference:(byRef : bool ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "initWithContentsOfFile" make_pointer_from_object
       ++ Objc.arg byRef "byReference" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithData:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
   method setName (string : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "setName:")[make_pointer_from_object string]) : bool)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method initWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSObject] Objc.nativeNSObject)
   method writeToPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "writeToPasteboard:")[make_pointer_from_object pasteboard]) : unit)
   method play =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "play:")[]) : bool)
   method pause =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "pause:")[]) : bool)
   method resume =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "resume:")[]) : bool)
   method stop =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "stop:")[]) : bool)
   method isPlaying =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isPlaying:")[]) : bool)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (aDelegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object aDelegate]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSSoundDelegateMethods *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSSoundDelegateMethods *)
   method sound  ~didFinishPlaying:(aBool : bool ) (sound : [`NSSound] Objc.t) =
     let sel, args = (
       Objc.arg sound "sound" make_pointer_from_object
       ++ Objc.arg aBool "didFinishPlaying" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
(* Class object for NSBundle *)
let class_NSBundle = object
   val repr = Classes.find "NSBundle"
   method _new = (Objc.objcnew repr : [`NSBundle] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSBundle] nativeNSObject)
(* methods for category NSBundleSoundExtensions *)
end
(* Encapsulation for native instance of NSBundle *)
class native_NSBundle = fun (o : [`NSBundle] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSBundleSoundExtensions *)
   method pathForSoundResource (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "pathForSoundResource:")[make_pointer_from_object name]) : [`NSString] Objc.nativeNSObject)
end
