(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSTableViewNoColumnAutoresizing = 0L
let _NSTableViewUniformColumnAutoresizingStyle = 1L
let _NSTableViewSequentialColumnAutoresizingStyle = 2L
let _NSTableViewReverseSequentialColumnAutoresizingStyle = 3L
let _NSTableViewLastColumnOnlyAutoresizingStyle = 4L
let _NSTableViewFirstColumnOnlyAutoresizingStyle = 5L
let _NSTableViewGridNone = 0L
let _NSTableViewSolidVerticalGridLineMask = 1L
let _NSTableViewSolidHorizontalGridLineMask = 2L


class t = fun (r :[`NSTableView] id) -> object
  inherit Im_NSTableView.methods
  method repr = r
end

(* Class object for NSTableView *)
let c = Classes.find "NSTableView"
let _new()= (Objc.objcnew c : [`NSTableView] id)
let alloc() = (Objc.objcalloc c : [`NSTableView] id)
