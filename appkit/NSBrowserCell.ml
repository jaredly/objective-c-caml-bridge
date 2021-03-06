(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSBrowserCell.methods
end

class t = fun (r :[`NSBrowserCell] id) -> object
  inherit methods
  inherit NSCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSBrowserCell *)
let c = Classes.find "NSBrowserCell"
let _new()= (Objc.objcnew c : [`NSBrowserCell] id)
let alloc() = (Objc.objcalloc c : [`NSBrowserCell] id)
let branchImage () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "branchImage")[])
       : [`NSImage] Objc.id))
let highlightedBranchImage () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "highlightedBranchImage")[])
       : [`NSImage] Objc.id))
