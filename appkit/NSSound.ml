open Objc
open NSObject
open NSBundle


external init : unit -> unit = "caml_init_NSSound"
let _ = init()
(* Class object for NSSound *)
let class_NSSound = object
   val o = Classes.find "NSSound"
   method _new = (Objc.objcnew o : [`NSSound] nativeNSObject)
   method soundNamed (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "soundNamed:")[make_pointer_from_object name]) : [`NSSound] Objc.nativeNSObject)
   method canInitWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "canInitWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSSound] Objc.nativeNSObject)
   method soundUnfilteredFileTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "soundUnfilteredFileTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method soundUnfilteredPasteboardTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "soundUnfilteredPasteboardTypes:")[]) : [`NSArray] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSSound *)
class native_NSSound = fun (o : [`NSSound] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithContentsOfURL  ~byReference:(byRef : bool ) (url : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg url "initWithContentsOfURL" make_pointer_from_object
       ++ Objc.arg byRef "byReference" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithContentsOfFile  ~byReference:(byRef : bool ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "initWithContentsOfFile" make_pointer_from_object
       ++ Objc.arg byRef "byReference" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithData:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
   method setName (string : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "setName:")[make_pointer_from_object string]) : bool)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method initWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithPasteboard:")[make_pointer_from_object pasteboard]) : [`NSObject] Objc.nativeNSObject)
   method writeToPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "writeToPasteboard:")[make_pointer_from_object pasteboard]) : unit)
   method play =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "play:")[]) : bool)
   method pause =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "pause:")[]) : bool)
   method resume =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "resume:")[]) : bool)
   method stop =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "stop:")[]) : bool)
   method isPlaying =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isPlaying:")[]) : bool)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (aDelegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object aDelegate]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSSoundDelegateMethods *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSSoundDelegateMethods *)
   method sound  ~didFinishPlaying:(aBool : bool ) (sound : [`NSSound] Objc.t) =
     let sel, args = (
       Objc.arg sound "sound" make_pointer_from_object
       ++ Objc.arg aBool "didFinishPlaying" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
(* Class object for NSBundle *)
let class_NSBundle = object
   val o = Classes.find "NSBundle"
   method _new = (Objc.objcnew o : [`NSBundle] nativeNSObject)
(* methods for category NSBundleSoundExtensions *)
end
(* Encapsulation for native instance of NSBundle *)
class native_NSBundle = fun (o : [`NSBundle] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSBundleSoundExtensions *)
   method pathForSoundResource (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pathForSoundResource:")[make_pointer_from_object name]) : [`NSString] Objc.nativeNSObject)
end
