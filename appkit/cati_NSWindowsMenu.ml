(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSWindowsMenu of NSApplication *)
class virtual methods_NSApplication = object (self)
  method virtual repr : [`NSApplication] Objc.id
  method setWindowsMenu (aMenu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWindowsMenu:")
      [make_pointer_from_object aMenu]) : unit)
  method windowsMenu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowsMenu")[])
       : [`NSMenu] Objc.id))
  method arrangeInFront (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "arrangeInFront:")
      [make_pointer_from_object sender]) : unit)
  method removeWindowsItem (win : [`NSWindow] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeWindowsItem:")
      [make_pointer_from_object win]) : unit)
  method addWindowsItem  ~title:(aString : [`NSString] Objc.t ) ~filename:(isFilename : bool ) (win : [`NSWindow] Objc.t) =
    let sel, args = (
      Objc.arg win "addWindowsItem" make_pointer_from_object
      ++ Objc.arg aString "title" make_pointer_from_object
      ++ Objc.arg isFilename "filename" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method changeWindowsItem  ~title:(aString : [`NSString] Objc.t ) ~filename:(isFilename : bool ) (win : [`NSWindow] Objc.t) =
    let sel, args = (
      Objc.arg win "changeWindowsItem" make_pointer_from_object
      ++ Objc.arg aString "title" make_pointer_from_object
      ++ Objc.arg isFilename "filename" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method updateWindowsItem (win : [`NSWindow] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateWindowsItem:")
      [make_pointer_from_object win]) : unit)
  method miniaturizeAll (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "miniaturizeAll:")
      [make_pointer_from_object sender]) : unit)
end
