(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSText


external init : unit -> unit = "caml_init_NSTextTable"
let _ = init()
let make_NSObject_of_NSTextBlock (o : [`NSTextBlock] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSTextBlock *)
let class_NSTextBlock = object
   val repr = Classes.find "NSTextBlock"
   method _new = (Objc.objcnew repr : [`NSTextBlock] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTextBlock] nativeNSObject)
end
(* Encapsulation for native instance of NSTextBlock *)
class native_NSTextBlock = fun (o : [`NSTextBlock] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSTextBlock o) as super
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method setValue  ~l_type:(_type : int ) ~forDimension:(dimension : int ) (_val : float) =
     let sel, args = (
       Objc.arg _val "setValue" make_float
       ++ Objc.arg _type "l_type" make_int
       ++ Objc.arg dimension "forDimension" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method valueForDimension (dimension : int) =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "valueForDimension:")[make_int dimension]) : float)
   method valueTypeForDimension (dimension : int) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "valueTypeForDimension:")[make_int dimension]) : int)
   method setContentWidth  ~l_type:(_type : int ) (_val : float) =
     let sel, args = (
       Objc.arg _val "setContentWidth" make_float
       ++ Objc.arg _type "l_type" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method contentWidth =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "contentWidth:")[]) : float)
   method contentWidthValueType =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "contentWidthValueType:")[]) : int)
(*  UNSUPPORTED
   method setWidth  ~l_type:(_type : int ) ~forLayer:(layer : int ) ?edge:(edge : (*NSRectEdge*) unsupported option) (_val : float) =
     let sel, args = (
       Objc.arg _val "setWidth" make_float
       ++ Objc.arg _type "l_type" make_int
       ++ Objc.arg layer "forLayer" make_int
       ++ Objc.opt_arg edge "edge" (*NSRectEdge*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   (* skipping selector setWidth:l_type:forLayer *)
(*  UNSUPPORTED
   method widthForLayer  ~edge:(edge : (*NSRectEdge*) unsupported ) (layer : int) =
     let sel, args = (
       Objc.arg layer "widthForLayer" make_int
       ++ Objc.arg edge "edge" (*NSRectEdge*) unsupported
     ) ([],[]) in
       (get_float (Objc.invoke Objc.tag_float repr (Selector.find_list sel) args) : float)

*)
(*  UNSUPPORTED
   method widthValueTypeForLayer  ~edge:(edge : (*NSRectEdge*) unsupported ) (layer : int) =
     let sel, args = (
       Objc.arg layer "widthValueTypeForLayer" make_int
       ++ Objc.arg edge "edge" (*NSRectEdge*) unsupported
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)

*)
   method setVerticalAlignment (alignment : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setVerticalAlignment:")[make_int alignment]) : unit)
   method verticalAlignment =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "verticalAlignment:")[]) : int)
   method setBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBackgroundColor:")[make_pointer_from_object color]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
(*  UNSUPPORTED
   method setBorderColor  ?forEdge:(edge : (*NSRectEdge*) unsupported option) (color : [`NSColor] Objc.t) =
     let sel, args = (
       Objc.arg color "setBorderColor" make_pointer_from_object
       ++ Objc.opt_arg edge "forEdge" (*NSRectEdge*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   (* skipping selector setBorderColor *)
(*  UNSUPPORTED
   method borderColorForEdge (edge : (*NSRectEdge*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "borderColorForEdge:")[(*NSRectEdge*) unsupported edge]) : [`NSColor] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method rectForLayoutAtPoint  ~inRect:(rect : (*NSRect*) unsupported ) ~textContainer:(textContainer : [`NSTextContainer] Objc.t ) ~characterRange:(charRange : (int * int) ) (startingPoint : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg startingPoint "rectForLayoutAtPoint" (*NSPoint*) unsupported
       ++ Objc.arg rect "inRect" (*NSRect*) unsupported
       ++ Objc.arg textContainer "textContainer" make_pointer_from_object
       ++ Objc.arg charRange "characterRange" make_range
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method boundsRectForContentRect  ~inRect:(rect : (*NSRect*) unsupported ) ~textContainer:(textContainer : [`NSTextContainer] Objc.t ) ~characterRange:(charRange : (int * int) ) (contentRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg contentRect "boundsRectForContentRect" (*NSRect*) unsupported
       ++ Objc.arg rect "inRect" (*NSRect*) unsupported
       ++ Objc.arg textContainer "textContainer" make_pointer_from_object
       ++ Objc.arg charRange "characterRange" make_range
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method drawBackgroundWithFrame  ~inView:(controlView : [`NSView] Objc.t ) ~characterRange:(charRange : (int * int) ) ~layoutManager:(layoutManager : [`NSLayoutManager] Objc.t ) (frameRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg frameRect "drawBackgroundWithFrame" (*NSRect*) unsupported
       ++ Objc.arg controlView "inView" make_pointer_from_object
       ++ Objc.arg charRange "characterRange" make_range
       ++ Objc.arg layoutManager "layoutManager" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
end
let make_NSTextBlock_of_NSTextTableBlock (o : [`NSTextTableBlock] nativeNSObject) = (Obj.magic o : [`NSTextBlock] nativeNSObject)
(* Class object for NSTextTableBlock *)
let class_NSTextTableBlock = object
   val repr = Classes.find "NSTextTableBlock"
   method _new = (Objc.objcnew repr : [`NSTextTableBlock] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTextTableBlock] nativeNSObject)
end
(* Encapsulation for native instance of NSTextTableBlock *)
class native_NSTextTableBlock = fun (o : [`NSTextTableBlock] nativeNSObject) -> object (self)
   inherit native_NSTextBlock (make_NSTextBlock_of_NSTextTableBlock o) as super
   method initWithTable  ~startingRow:(row : int ) ~rowSpan:(rowSpan : int ) ~startingColumn:(col : int ) ~columnSpan:(colSpan : int ) (table : [`NSTextTable] Objc.t) =
     let sel, args = (
       Objc.arg table "initWithTable" make_pointer_from_object
       ++ Objc.arg row "startingRow" make_int
       ++ Objc.arg rowSpan "rowSpan" make_int
       ++ Objc.arg col "startingColumn" make_int
       ++ Objc.arg colSpan "columnSpan" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method table =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "table:")[]) : [`NSTextTable] Objc.nativeNSObject)
   method startingRow =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "startingRow:")[]) : int)
   method rowSpan =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "rowSpan:")[]) : int)
   method startingColumn =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "startingColumn:")[]) : int)
   method columnSpan =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "columnSpan:")[]) : int)
end
let make_NSTextBlock_of_NSTextTable (o : [`NSTextTable] nativeNSObject) = (Obj.magic o : [`NSTextBlock] nativeNSObject)
(* Class object for NSTextTable *)
let class_NSTextTable = object
   val repr = Classes.find "NSTextTable"
   method _new = (Objc.objcnew repr : [`NSTextTable] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTextTable] nativeNSObject)
end
(* Encapsulation for native instance of NSTextTable *)
class native_NSTextTable = fun (o : [`NSTextTable] nativeNSObject) -> object (self)
   inherit native_NSTextBlock (make_NSTextBlock_of_NSTextTable o) as super
   method numberOfColumns =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfColumns:")[]) : int)
   method setNumberOfColumns (numCols : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setNumberOfColumns:")[make_int numCols]) : unit)
   method layoutAlgorithm =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "layoutAlgorithm:")[]) : int)
   method setLayoutAlgorithm (algorithm : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLayoutAlgorithm:")[make_int algorithm]) : unit)
   method collapsesBorders =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "collapsesBorders:")[]) : bool)
   method setCollapsesBorders (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCollapsesBorders:")[make_bool flag]) : unit)
   method hidesEmptyCells =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hidesEmptyCells:")[]) : bool)
   method setHidesEmptyCells (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHidesEmptyCells:")[make_bool flag]) : unit)
(*  UNSUPPORTED
   method rectForBlock  ~layoutAtPoint:(startingPoint : (*NSPoint*) unsupported ) ~inRect:(rect : (*NSRect*) unsupported ) ~textContainer:(textContainer : [`NSTextContainer] Objc.t ) ~characterRange:(charRange : (int * int) ) (block : [`NSTextTableBlock] Objc.t) =
     let sel, args = (
       Objc.arg block "rectForBlock" make_pointer_from_object
       ++ Objc.arg startingPoint "layoutAtPoint" (*NSPoint*) unsupported
       ++ Objc.arg rect "inRect" (*NSRect*) unsupported
       ++ Objc.arg textContainer "textContainer" make_pointer_from_object
       ++ Objc.arg charRange "characterRange" make_range
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method boundsRectForBlock  ~contentRect:(contentRect : (*NSRect*) unsupported ) ~inRect:(rect : (*NSRect*) unsupported ) ~textContainer:(textContainer : [`NSTextContainer] Objc.t ) ~characterRange:(charRange : (int * int) ) (block : [`NSTextTableBlock] Objc.t) =
     let sel, args = (
       Objc.arg block "boundsRectForBlock" make_pointer_from_object
       ++ Objc.arg contentRect "contentRect" (*NSRect*) unsupported
       ++ Objc.arg rect "inRect" (*NSRect*) unsupported
       ++ Objc.arg textContainer "textContainer" make_pointer_from_object
       ++ Objc.arg charRange "characterRange" make_range
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method drawBackgroundForBlock  ~withFrame:(frameRect : (*NSRect*) unsupported ) ~inView:(controlView : [`NSView] Objc.t ) ~characterRange:(charRange : (int * int) ) ~layoutManager:(layoutManager : [`NSLayoutManager] Objc.t ) (block : [`NSTextTableBlock] Objc.t) =
     let sel, args = (
       Objc.arg block "drawBackgroundForBlock" make_pointer_from_object
       ++ Objc.arg frameRect "withFrame" (*NSRect*) unsupported
       ++ Objc.arg controlView "inView" make_pointer_from_object
       ++ Objc.arg charRange "characterRange" make_range
       ++ Objc.arg layoutManager "layoutManager" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
end
