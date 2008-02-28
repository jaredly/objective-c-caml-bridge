(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSUndoCloseGroupingRunLoopOrdering = 350000L


class t = fun (r :[`NSUndoManager] id) -> object
  inherit Im_NSUndoManager.methods
  method repr = r
end

(* Class object for NSUndoManager *)
let c = Classes.find "NSUndoManager"
let _new()= (Objc.objcnew c : [`NSUndoManager] id)
let alloc() = (Objc.objcalloc c : [`NSUndoManager] id)
