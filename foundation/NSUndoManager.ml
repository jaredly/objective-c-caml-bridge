(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSUndoCloseGroupingRunLoopOrdering = 350000L


class virtual methods = object
  inherit Im_NSUndoManager.methods
end

class t = fun (r :[`NSUndoManager] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSUndoManager *)
let c = Classes.find "NSUndoManager"
let _new()= (Objc.objcnew c : [`NSUndoManager] id)
let alloc() = (Objc.objcalloc c : [`NSUndoManager] id)
