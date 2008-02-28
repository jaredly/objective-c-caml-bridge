(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSOpenPanelRuntime of NSOpenPanel *)
class virtual methods_NSOpenPanel = object (self)
  method virtual repr : [`NSOpenPanel] Objc.id
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method beginSheetForDirectory  ~file:(name : [`NSString] Objc.t ) ~types:(fileTypes : [`NSArray] Objc.t ) ~modalForWindow:(docWindow : [`NSWindow] Objc.t ) ~modalDelegate:(delegate : [`NSObject] Objc.t ) ~didEndSelector:(didEndSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (path : [`NSString] Objc.t) =
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

*)
  method beginForDirectory  ~file:(name : [`NSString] Objc.t ) ~types:(fileTypes : [`NSArray] Objc.t ) ~modelessDelegate:(delegate : [`NSObject] Objc.t ) ~didEndSelector:(didEndSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (path : [`NSString] Objc.t) =
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
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method runModalForDirectory  ~file:(name : [`NSString] Objc.t ) ~types:(fileTypes : [`NSArray] Objc.t ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "runModalForDirectory" make_pointer_from_object
      ++ Objc.arg name "file" make_pointer_from_object
      ++ Objc.arg fileTypes "types" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)

*)
  method runModalForTypes (fileTypes : [`NSArray] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "runModalForTypes:")
      [make_pointer_from_object fileTypes]) : int)
end
