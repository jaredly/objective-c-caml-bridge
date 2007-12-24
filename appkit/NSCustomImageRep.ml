(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSImageRep


external init : unit -> unit = "caml_init_NSCustomImageRep"
let _ = init()
let make_NSImageRep_of_NSCustomImageRep (o : [`NSCustomImageRep] nativeNSObject) = (Obj.magic o : [`NSImageRep] nativeNSObject)
(* Class object for NSCustomImageRep *)
let class_NSCustomImageRep = object
   val repr = Classes.find "NSCustomImageRep"
   method _new = (Objc.objcnew repr : [`NSCustomImageRep] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSCustomImageRep] nativeNSObject)
end
(* Encapsulation for native instance of NSCustomImageRep *)
class native_NSCustomImageRep = fun (o : [`NSCustomImageRep] nativeNSObject) -> object (self)
   inherit native_NSImageRep (make_NSImageRep_of_NSCustomImageRep o) as super
   method initWithDrawSelector  ~delegate:(anObject : [`NSObject] Objc.t ) (aMethod : selector) =
     let sel, args = (
       Objc.arg aMethod "initWithDrawSelector" make_selector
       ++ Objc.arg anObject "delegate" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method drawSelector =
     (get_selector (Objc.invoke Objc.tag_selector repr (Selector.find "drawSelector:")[]) : selector)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
end
