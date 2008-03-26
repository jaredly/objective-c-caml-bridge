(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSOutputStreamExtensions.methods_NSOutputStream
  inherit Im_NSOutputStream.methods
end

class t = fun (r :[`NSOutputStream] id) -> object
  inherit methods
  inherit NSStream.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSOutputStream *)
let c = Classes.find "NSOutputStream"
let _new()= (Objc.objcnew c : [`NSOutputStream] id)
let alloc() = (Objc.objcalloc c : [`NSOutputStream] id)
(* class methods for category NSOutputStreamExtensions of NSOutputStream *)
let outputStreamToMemory () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "outputStreamToMemory")[])
       : [`NSOutputStream] Objc.id))
let outputStreamToBuffer_capacity  (buffer : [`uint8_t] Objc.t) (capacity : int) =
    let sel, args = (
      Objc.arg buffer "outputStreamToBuffer" make_pointer_from_object
      ++ Objc.arg capacity "capacity" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSOutputStream] Objc.id))
let outputStreamToFileAtPath_append  (path : [`NSString] Objc.t) (shouldAppend : bool) =
    let sel, args = (
      Objc.arg path "outputStreamToFileAtPath" make_pointer_from_object
      ++ Objc.arg shouldAppend "append" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSOutputStream] Objc.id))
