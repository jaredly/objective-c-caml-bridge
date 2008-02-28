(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSAppleScript] id) -> object
  inherit Im_NSAppleScript.methods
  method repr = r
end

(* Class object for NSAppleScript *)
let c = Classes.find "NSAppleScript"
let _new()= (Objc.objcnew c : [`NSAppleScript] id)
let alloc() = (Objc.objcalloc c : [`NSAppleScript] id)
