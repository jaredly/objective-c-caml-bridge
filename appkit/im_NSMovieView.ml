(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMovieView *)
class virtual methods = object (self)
  method virtual repr : [`NSMovieView] Objc.id
  method setMovie (movie : [`NSMovie] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMovie:")
      [make_pointer_from_object movie]) : unit)
  method movie =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "movie")[])
       : [`NSMovie] Objc.id))
  method movieController =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "movieController")[])
       : [`void] Objc.id))
(*  UNSUPPORTED
  method movieRect =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "movieRect")[])
       : (*NSRect*) unsupported)

*)
  method start (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "start:")
      [make_pointer_from_object sender]) : unit)
  method stop (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stop:")
      [make_pointer_from_object sender]) : unit)
  method isPlaying =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isPlaying")[])
       : bool)
  method gotoPosterFrame (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "gotoPosterFrame:")
      [make_pointer_from_object sender]) : unit)
  method gotoBeginning (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "gotoBeginning:")
      [make_pointer_from_object sender]) : unit)
  method gotoEnd (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "gotoEnd:")
      [make_pointer_from_object sender]) : unit)
  method stepForward (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stepForward:")
      [make_pointer_from_object sender]) : unit)
  method stepBack (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stepBack:")
      [make_pointer_from_object sender]) : unit)
  method setRate (rate : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRate:")
      [make_float rate]) : unit)
  method rate =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "rate")[])
       : float)
  method setVolume (volume : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVolume:")
      [make_float volume]) : unit)
  method volume =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "volume")[])
       : float)
  method setMuted (mute : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMuted:")
      [make_bool mute]) : unit)
  method isMuted =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isMuted")[])
       : bool)
  method setLoopMode (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLoopMode:")
      [make_int mode]) : unit)
  method loopMode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "loopMode")[])
       : int)
  method setPlaysSelectionOnly (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPlaysSelectionOnly:")
      [make_bool flag]) : unit)
  method playsSelectionOnly =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "playsSelectionOnly")[])
       : bool)
  method setPlaysEveryFrame (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPlaysEveryFrame:")
      [make_bool flag]) : unit)
  method playsEveryFrame =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "playsEveryFrame")[])
       : bool)
  method showController  ~adjustingSize:(adjustSize : bool ) (show : bool) =
    let sel, args = (
      Objc.arg show "showController" make_bool
      ++ Objc.arg adjustSize "adjustingSize" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method isControllerVisible =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isControllerVisible")[])
       : bool)
  method resizeWithMagnification (magnification : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resizeWithMagnification:")
      [make_float magnification]) : unit)
(*  UNSUPPORTED
  method sizeForMagnification (magnification : float) =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "sizeForMagnification:")
      [make_float magnification]) : (*NSSize*) unsupported)

*)
  method setEditable (editable : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEditable:")
      [make_bool editable]) : unit)
  method isEditable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEditable")[])
       : bool)
  method cut (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "cut:")
      [make_pointer_from_object sender]) : unit)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method copy (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "copy:")
      [make_pointer_from_object sender]) : unit)

*)
  method paste (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "paste:")
      [make_pointer_from_object sender]) : unit)
  method delete (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "delete:")
      [make_pointer_from_object sender]) : unit)
  method selectAll (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectAll:")
      [make_pointer_from_object sender]) : unit)
  method clear (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "clear:")
      [make_pointer_from_object sender]) : unit)
end
