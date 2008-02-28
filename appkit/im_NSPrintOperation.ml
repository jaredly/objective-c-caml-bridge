(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPrintOperation *)
class virtual methods = object (self)
  method virtual repr : [`NSPrintOperation] Objc.id
  method isCopyingOperation =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isCopyingOperation")[])
       : bool)
  method runOperation =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "runOperation")[])
       : bool)
  method runOperationModalForWindow  ~delegate:(delegate : [`NSObject] Objc.t ) ~didRunSelector:(didRunSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (docWindow : [`NSWindow] Objc.t) =
    let sel, args = (
      Objc.arg docWindow "runOperationModalForWindow" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didRunSelector "didRunSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setCanSpawnSeparateThread (canSpawnSeparateThread : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCanSpawnSeparateThread:")
      [make_bool canSpawnSeparateThread]) : unit)
  method canSpawnSeparateThread =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canSpawnSeparateThread")[])
       : bool)
  method setShowsPrintPanel (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowsPrintPanel:")
      [make_bool flag]) : unit)
  method showsPrintPanel =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "showsPrintPanel")[])
       : bool)
  method setShowsProgressPanel (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowsProgressPanel:")
      [make_bool flag]) : unit)
  method showsProgressPanel =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "showsProgressPanel")[])
       : bool)
  method setPrintPanel (panel : [`NSPrintPanel] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPrintPanel:")
      [make_pointer_from_object panel]) : unit)
  method printPanel =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "printPanel")[])
       : [`NSPrintPanel] Objc.id))
  method setAccessoryView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAccessoryView:")
      [make_pointer_from_object aView]) : unit)
  method accessoryView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "accessoryView")[])
       : [`NSView] Objc.id))
  method setJobStyleHint (hint : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setJobStyleHint:")
      [make_pointer_from_object hint]) : unit)
  method jobStyleHint =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "jobStyleHint")[])
       : [`NSString] Objc.id))
  method setPrintInfo (aPrintInfo : [`NSPrintInfo] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPrintInfo:")
      [make_pointer_from_object aPrintInfo]) : unit)
  method printInfo =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "printInfo")[])
       : [`NSPrintInfo] Objc.id))
  method view =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "view")[])
       : [`NSView] Objc.id))
  method currentPage =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "currentPage")[])
       : int)
  method setPageOrder (order : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPageOrder:")
      [make_int order]) : unit)
  method pageOrder =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "pageOrder")[])
       : int)
  method context =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "context")[])
       : [`NSGraphicsContext] Objc.id))
  method createContext =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "createContext")[])
       : [`NSGraphicsContext] Objc.id))
  method destroyContext =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "destroyContext")[])
       : unit)
  method deliverResult =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "deliverResult")[])
       : bool)
  method cleanUpOperation =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "cleanUpOperation")[])
       : unit)
end
