(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSSavePanelRuntime of NSSavePanel *)
class virtual methods_NSSavePanel = object (self)
  method virtual repr : [`NSSavePanel] Objc.id
(*  UNSUPPORTED
  method ok (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "ok:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
(*  UNSUPPORTED
  method cancel (sender : [`NSObject] Objc.t) =
    ((*IBAction*) unsupported (Objc.invoke (*IBAction*) Objc.tag_unsupported self#repr (Selector.find "cancel:")
      [make_pointer_from_object sender]) : (*IBAction*) unsupported)

*)
  method beginSheetForDirectory  ~file:(name : [`NSString] Objc.t ) ~modalForWindow:(docWindow : [`NSWindow] Objc.t ) ~modalDelegate:(delegate : [`NSObject] Objc.t ) ~didEndSelector:(didEndSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "beginSheetForDirectory" make_pointer_from_object
      ++ Objc.arg name "file" make_pointer_from_object
      ++ Objc.arg docWindow "modalForWindow" make_pointer_from_object
      ++ Objc.arg delegate "modalDelegate" make_pointer_from_object
      ++ Objc.arg didEndSelector "didEndSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method runModalForDirectory  ~file:(name : [`NSString] Objc.t ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "runModalForDirectory" make_pointer_from_object
      ++ Objc.arg name "file" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method runModal =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "runModal")[])
       : int)
end
