open Objc
open NSView


external init : unit -> unit = "caml_init_NSMovieView"
let _ = init()
(* Class object for NSMovieView *)
let class_NSMovieView = object
   val o = Classes.find "NSMovieView"
   method _new = (Objc.objcnew o : [`NSMovieView] nativeNSObject)
end
(* Encapsulation for native instance of NSMovieView *)
class native_NSMovieView = fun (o : [`NSMovieView] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setMovie (movie : [`NSMovie] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMovie:")[make_pointer_from_object movie]) : unit)
   method movie =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "movie:")[]) : [`NSMovie] Objc.nativeNSObject)
   method movieController =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "movieController:")[]) : [`void] Objc.nativeNSObject)
(*  UNSUPPORTED
   method movieRect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "movieRect:")[]) : (*NSRect*) unsupported)

*)
   method start (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "start:")[make_pointer_from_object sender]) : unit)
   method stop (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "stop:")[make_pointer_from_object sender]) : unit)
   method isPlaying =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isPlaying:")[]) : bool)
   method gotoPosterFrame (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "gotoPosterFrame:")[make_pointer_from_object sender]) : unit)
   method gotoBeginning (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "gotoBeginning:")[make_pointer_from_object sender]) : unit)
   method gotoEnd (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "gotoEnd:")[make_pointer_from_object sender]) : unit)
   method stepForward (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "stepForward:")[make_pointer_from_object sender]) : unit)
   method stepBack (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "stepBack:")[make_pointer_from_object sender]) : unit)
   method setRate (rate : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRate:")[make_float rate]) : unit)
   method rate =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "rate:")[]) : float)
   method setVolume (volume : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setVolume:")[make_float volume]) : unit)
   method volume =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "volume:")[]) : float)
   method setMuted (mute : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMuted:")[make_bool mute]) : unit)
   method isMuted =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isMuted:")[]) : bool)
   method setLoopMode (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLoopMode:")[make_int mode]) : unit)
   method loopMode =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "loopMode:")[]) : int)
   method setPlaysSelectionOnly (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPlaysSelectionOnly:")[make_bool flag]) : unit)
   method playsSelectionOnly =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "playsSelectionOnly:")[]) : bool)
   method setPlaysEveryFrame (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPlaysEveryFrame:")[make_bool flag]) : unit)
   method playsEveryFrame =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "playsEveryFrame:")[]) : bool)
   method showController  ~adjustingSize:(adjustSize : bool ) (show : bool) =
     let sel, args = (
       Objc.arg show "showController" make_bool
       ++ Objc.arg adjustSize "adjustingSize" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method isControllerVisible =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isControllerVisible:")[]) : bool)
   method resizeWithMagnification (magnification : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "resizeWithMagnification:")[make_float magnification]) : unit)
(*  UNSUPPORTED
   method sizeForMagnification (magnification : float) =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "sizeForMagnification:")[make_float magnification]) : (*NSSize*) unsupported)

*)
   method setEditable (editable : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setEditable:")[make_bool editable]) : unit)
   method isEditable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEditable:")[]) : bool)
   method cut (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "cut:")[make_pointer_from_object sender]) : unit)
   method copy (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "copy:")[make_pointer_from_object sender]) : unit)
   method paste (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "paste:")[make_pointer_from_object sender]) : unit)
   method delete (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "delete:")[make_pointer_from_object sender]) : unit)
   method selectAll (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectAll:")[make_pointer_from_object sender]) : unit)
   method clear (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "clear:")[make_pointer_from_object sender]) : unit)
end
