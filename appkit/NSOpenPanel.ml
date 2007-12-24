(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSSavePanel


external init : unit -> unit = "caml_init_NSOpenPanel"
let _ = init()
let make_NSSavePanel_of_NSOpenPanel (o : [`NSOpenPanel] nativeNSObject) = (Obj.magic o : [`NSSavePanel] nativeNSObject)
(* Class object for NSOpenPanel *)
let class_NSOpenPanel = object
   val repr = Classes.find "NSOpenPanel"
   method _new = (Objc.objcnew repr : [`NSOpenPanel] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSOpenPanel] nativeNSObject)
(* methods for category NSOpenPanelRuntime *)
   method openPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "openPanel:")[]) : [`NSOpenPanel] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSOpenPanel *)
class native_NSOpenPanel = fun (o : [`NSOpenPanel] nativeNSObject) -> object (self)
   inherit native_NSSavePanel (make_NSSavePanel_of_NSOpenPanel o) as super
(* methods for category NSOpenPanelRuntime *)
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
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

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
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method runModalForDirectory  ~file:(name : [`NSString] Objc.t ) ~types:(fileTypes : [`NSArray] Objc.t ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "runModalForDirectory" make_pointer_from_object
       ++ Objc.arg name "file" make_pointer_from_object
       ++ Objc.arg fileTypes "types" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)

*)
   method runModalForTypes (fileTypes : [`NSArray] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "runModalForTypes:")[make_pointer_from_object fileTypes]) : int)
   method l_URLs =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_URLs:")[]) : [`NSArray] Objc.nativeNSObject)
   method filenames =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "filenames:")[]) : [`NSArray] Objc.nativeNSObject)
   method resolvesAliases =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "resolvesAliases:")[]) : bool)
   method setResolvesAliases (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setResolvesAliases:")[make_bool flag]) : unit)
   method canChooseDirectories =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canChooseDirectories:")[]) : bool)
   method setCanChooseDirectories (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCanChooseDirectories:")[make_bool flag]) : unit)
   method allowsMultipleSelection =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsMultipleSelection:")[]) : bool)
   method setAllowsMultipleSelection (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsMultipleSelection:")[make_bool flag]) : unit)
   method canChooseFiles =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canChooseFiles:")[]) : bool)
   method setCanChooseFiles (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCanChooseFiles:")[make_bool flag]) : unit)
end
