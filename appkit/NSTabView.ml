open Objc
open NSView
open NSCell


external init : unit -> unit = "caml_init_NSTabView"
let _ = init()
(* Class object for NSTabView *)
let class_NSTabView = object
   val o = Classes.find "NSTabView"
   method _new = (Objc.objcnew o : [`NSTabView] nativeNSObject)
end
(* Encapsulation for native instance of NSTabView *)
class native_NSTabView = fun (o : [`NSTabView] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method selectTabViewItem (tabViewItem : [`NSTabViewItem] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectTabViewItem:")[make_pointer_from_object tabViewItem]) : unit)
   method selectTabViewItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectTabViewItemAtIndex:")[make_int index]) : unit)
   method selectTabViewItemWithIdentifier (identifier : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectTabViewItemWithIdentifier:")[make_pointer_from_object identifier]) : unit)
   method takeSelectedTabViewItemFromSender (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "takeSelectedTabViewItemFromSender:")[make_pointer_from_object sender]) : unit)
   method selectFirstTabViewItem (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectFirstTabViewItem:")[make_pointer_from_object sender]) : unit)
   method selectLastTabViewItem (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectLastTabViewItem:")[make_pointer_from_object sender]) : unit)
   method selectNextTabViewItem (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectNextTabViewItem:")[make_pointer_from_object sender]) : unit)
   method selectPreviousTabViewItem (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectPreviousTabViewItem:")[make_pointer_from_object sender]) : unit)
   method selectedTabViewItem =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedTabViewItem:")[]) : [`NSTabViewItem] Objc.nativeNSObject)
   method font =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "font:")[]) : [`NSFont] Objc.nativeNSObject)
   method tabViewType =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "tabViewType:")[]) : int)
   method tabViewItems =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "tabViewItems:")[]) : [`NSArray] Objc.nativeNSObject)
   method allowsTruncatedLabels =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "allowsTruncatedLabels:")[]) : bool)
(*  UNSUPPORTED
   method minimumSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "minimumSize:")[]) : (*NSSize*) unsupported)

*)
   method drawsBackground =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "drawsBackground:")[]) : bool)
   method controlTint =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "controlTint:")[]) : int)
   method controlSize =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "controlSize:")[]) : int)
   method setFont (font : [`NSFont] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFont:")[make_pointer_from_object font]) : unit)
   method setTabViewType (tabViewType : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTabViewType:")[make_int tabViewType]) : unit)
   method setAllowsTruncatedLabels (allowTruncatedLabels : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAllowsTruncatedLabels:")[make_bool allowTruncatedLabels]) : unit)
   method setDrawsBackground (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDrawsBackground:")[make_bool flag]) : unit)
   method setControlTint (controlTint : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setControlTint:")[make_int controlTint]) : unit)
   method setControlSize (controlSize : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setControlSize:")[make_int controlSize]) : unit)
   method addTabViewItem (tabViewItem : [`NSTabViewItem] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addTabViewItem:")[make_pointer_from_object tabViewItem]) : unit)
   method insertTabViewItem  ~atIndex:(index : int ) (tabViewItem : [`NSTabViewItem] Objc.t) =
     let sel, args = (
       Objc.arg tabViewItem "insertTabViewItem" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removeTabViewItem (tabViewItem : [`NSTabViewItem] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeTabViewItem:")[make_pointer_from_object tabViewItem]) : unit)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method tabViewItemAtPoint (point : (*NSPoint*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "tabViewItemAtPoint:")[(*NSPoint*) unsupported point]) : [`NSTabViewItem] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method contentRect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "contentRect:")[]) : (*NSRect*) unsupported)

*)
   method numberOfTabViewItems =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfTabViewItems:")[]) : int)
   method indexOfTabViewItem (tabViewItem : [`NSTabViewItem] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfTabViewItem:")[make_pointer_from_object tabViewItem]) : int)
   method tabViewItemAtIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "tabViewItemAtIndex:")[make_int index]) : [`NSTabViewItem] Objc.nativeNSObject)
   method indexOfTabViewItemWithIdentifier (identifier : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfTabViewItemWithIdentifier:")[make_pointer_from_object identifier]) : int)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSTabViewDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSTabViewDelegate *)
   method tabView  ?shouldSelectTabViewItem:(tabViewItem : [`NSTabViewItem] Objc.t option) (tabView : [`NSTabView] Objc.t) =
     let sel, args = (
       Objc.arg tabView "tabView" make_pointer_from_object
       ++ Objc.opt_arg tabViewItem "shouldSelectTabViewItem" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   (* skipping selector tabView:willSelectTabViewItem *)
   (* skipping selector tabView:didSelectTabViewItem *)
   method tabViewDidChangeNumberOfTabViewItems (_TabView : [`NSTabView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "tabViewDidChangeNumberOfTabViewItems:")[make_pointer_from_object _TabView]) : unit)
end
