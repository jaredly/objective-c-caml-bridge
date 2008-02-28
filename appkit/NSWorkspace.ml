(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSWorkspaceLaunchAndPrint = 2L
let _NSWorkspaceLaunchInhibitingBackgroundOnly = 128L
let _NSWorkspaceLaunchWithoutAddingToRecents = 256L
let _NSWorkspaceLaunchWithoutActivation = 512L
let _NSWorkspaceLaunchAsync = 65536L
let _NSWorkspaceLaunchAllowingClassicStartup = 131072L
let _NSWorkspaceLaunchPreferringClassic = 262144L
let _NSWorkspaceLaunchNewInstance = 524288L
let _NSWorkspaceLaunchAndHide = 1048576L
let _NSWorkspaceLaunchAndHideOthers = 2097152L
(* let_NSWorkspaceLaunchDefault = ?? *)
let _NSExcludeQuickDrawElementsIconCreationOption = 2L
let _NSExclude10_4ElementsIconCreationOption = 4L


class t = fun (r :[`NSWorkspace] id) -> object
  inherit Im_NSWorkspace.methods
  method repr = r
end

(* Class object for NSWorkspace *)
let c = Classes.find "NSWorkspace"
let _new()= (Objc.objcnew c : [`NSWorkspace] id)
let alloc() = (Objc.objcalloc c : [`NSWorkspace] id)
let sharedWorkspace () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedWorkspace")[])
       : [`NSWorkspace] Objc.id))
