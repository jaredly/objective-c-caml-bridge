(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTabView *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method selectTabViewItem (tabViewItem : [`NSTabViewItem] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectTabViewItem:")
      [make_pointer_from_object tabViewItem]) : unit)
  method selectTabViewItemAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectTabViewItemAtIndex:")
      [make_int index]) : unit)
  method selectTabViewItemWithIdentifier (identifier : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectTabViewItemWithIdentifier:")
      [make_pointer_from_object identifier]) : unit)
  method takeSelectedTabViewItemFromSender (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeSelectedTabViewItemFromSender:")
      [make_pointer_from_object sender]) : unit)
  method selectFirstTabViewItem (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectFirstTabViewItem:")
      [make_pointer_from_object sender]) : unit)
  method selectLastTabViewItem (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectLastTabViewItem:")
      [make_pointer_from_object sender]) : unit)
  method selectNextTabViewItem (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectNextTabViewItem:")
      [make_pointer_from_object sender]) : unit)
  method selectPreviousTabViewItem (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectPreviousTabViewItem:")
      [make_pointer_from_object sender]) : unit)
  method selectedTabViewItem =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedTabViewItem")[])
       : [`NSTabViewItem] Objc.id))
  method font =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "font")[])
       : [`NSFont] Objc.id))
  method tabViewType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tabViewType")[])
       : int)
  method tabViewItems =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "tabViewItems")[])
       : [`NSArray] Objc.id))
  method allowsTruncatedLabels =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsTruncatedLabels")[])
       : bool)
  method minimumSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "minimumSize")[])
       : NSSize.t)
  method drawsBackground =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "drawsBackground")[])
       : bool)
  method controlTint =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "controlTint")[])
       : int)
  method controlSize =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "controlSize")[])
       : int)
  method setFont (font : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFont:")
      [make_pointer_from_object font]) : unit)
  method setTabViewType (tabViewType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTabViewType:")
      [make_int tabViewType]) : unit)
  method setAllowsTruncatedLabels (allowTruncatedLabels : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsTruncatedLabels:")
      [make_bool allowTruncatedLabels]) : unit)
  method setDrawsBackground (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDrawsBackground:")
      [make_bool flag]) : unit)
  method setControlTint (controlTint : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setControlTint:")
      [make_int controlTint]) : unit)
  method setControlSize (controlSize : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setControlSize:")
      [make_int controlSize]) : unit)
  method addTabViewItem (tabViewItem : [`NSTabViewItem] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addTabViewItem:")
      [make_pointer_from_object tabViewItem]) : unit)
  method insertTabViewItem_atIndex  (tabViewItem : [`NSTabViewItem] Objc.t) (index : int) =
    let sel, args = (
      Objc.arg tabViewItem "insertTabViewItem" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeTabViewItem (tabViewItem : [`NSTabViewItem] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeTabViewItem:")
      [make_pointer_from_object tabViewItem]) : unit)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method tabViewItemAtPoint (point : NSPoint.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "tabViewItemAtPoint:")
      [make_point point]) : [`NSTabViewItem] Objc.id))
  method contentRect =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "contentRect")[])
       : NSRect.t)
  method numberOfTabViewItems =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfTabViewItems")[])
       : int)
  method indexOfTabViewItem (tabViewItem : [`NSTabViewItem] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfTabViewItem:")
      [make_pointer_from_object tabViewItem]) : int)
  method tabViewItemAtIndex (index : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "tabViewItemAtIndex:")
      [make_int index]) : [`NSTabViewItem] Objc.id))
  method indexOfTabViewItemWithIdentifier (identifier : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfTabViewItemWithIdentifier:")
      [make_pointer_from_object identifier]) : int)
end
