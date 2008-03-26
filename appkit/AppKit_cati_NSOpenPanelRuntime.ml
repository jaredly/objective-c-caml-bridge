(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSOpenPanelRuntime of NSOpenPanel *)
class virtual methods_NSOpenPanel = object (self)
  method virtual repr : [`NSObject] Objc.id
  method beginSheetForDirectory_file_types_modalForWindow_modalDelegate_didEndSelector_contextInfo  (path : [`NSString] Objc.t) (name : [`NSString] Objc.t) (fileTypes : [`NSArray] Objc.t) (docWindow : [`NSWindow] Objc.t) (delegate : [`NSObject] Objc.t) (didEndSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg path "beginSheetForDirectory" make_pointer_from_object
      ++ Objc.arg name "file" make_pointer_from_object
      ++ Objc.arg fileTypes "types" make_pointer_from_object
      ++ Objc.arg docWindow "modalForWindow" make_pointer_from_object
      ++ Objc.arg delegate "modalDelegate" make_pointer_from_object
      ++ Objc.arg didEndSelector "didEndSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method beginForDirectory_file_types_modelessDelegate_didEndSelector_contextInfo  (path : [`NSString] Objc.t) (name : [`NSString] Objc.t) (fileTypes : [`NSArray] Objc.t) (delegate : [`NSObject] Objc.t) (didEndSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg path "beginForDirectory" make_pointer_from_object
      ++ Objc.arg name "file" make_pointer_from_object
      ++ Objc.arg fileTypes "types" make_pointer_from_object
      ++ Objc.arg delegate "modelessDelegate" make_pointer_from_object
      ++ Objc.arg didEndSelector "didEndSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method runModalForDirectory_file_types  (path : [`NSString] Objc.t) (name : [`NSString] Objc.t) (fileTypes : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg path "runModalForDirectory" make_pointer_from_object
      ++ Objc.arg name "file" make_pointer_from_object
      ++ Objc.arg fileTypes "types" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method runModalForTypes (fileTypes : [`NSArray] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "runModalForTypes:")
      [make_pointer_from_object fileTypes]) : int)
end
