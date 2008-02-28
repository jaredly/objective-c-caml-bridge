(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSound *)
class virtual methods = object (self)
  method virtual repr : [`NSSound] Objc.id
  method initWithContentsOfURL  ~byReference:(byRef : bool ) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "initWithContentsOfURL" make_pointer_from_object
      ++ Objc.arg byRef "byReference" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfFile  ~byReference:(byRef : bool ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "initWithContentsOfFile" make_pointer_from_object
      ++ Objc.arg byRef "byReference" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithData (data : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object data]) : [`NSObject] Objc.id)
  method setName (string : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "setName:")
      [make_pointer_from_object string]) : bool)
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method initWithPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithPasteboard:")
      [make_pointer_from_object pasteboard]) : [`NSObject] Objc.id)
  method writeToPasteboard (pasteboard : [`NSPasteboard] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "writeToPasteboard:")
      [make_pointer_from_object pasteboard]) : unit)
  method play =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "play")[])
       : bool)
  method pause =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "pause")[])
       : bool)
  method resume =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "resume")[])
       : bool)
  method stop =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "stop")[])
       : bool)
  method isPlaying =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isPlaying")[])
       : bool)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (aDelegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object aDelegate]) : unit)
end
