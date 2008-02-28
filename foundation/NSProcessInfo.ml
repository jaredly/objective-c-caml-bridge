(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSWindowsNTOperatingSystem = 1L
let _NSWindows95OperatingSystem = 2L
let _NSSolarisOperatingSystem = 3L
let _NSHPUXOperatingSystem = 4L
let _NSMACHOperatingSystem = 5L
let _NSSunOSOperatingSystem = 6L
let _NSOSF1OperatingSystem = 7L


class t = fun (r :[`NSProcessInfo] id) -> object
  inherit Im_NSProcessInfo.methods
  method repr = r
end

(* Class object for NSProcessInfo *)
let c = Classes.find "NSProcessInfo"
let _new()= (Objc.objcnew c : [`NSProcessInfo] id)
let alloc() = (Objc.objcalloc c : [`NSProcessInfo] id)
let processInfo () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "processInfo")[])
       : [`NSProcessInfo] Objc.id))
