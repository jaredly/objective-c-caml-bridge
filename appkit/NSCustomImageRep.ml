open Objc
open NSImageRep


external init : unit -> unit = "caml_init_NSCustomImageRep"
let _ = init()
(* Class object for NSCustomImageRep *)
let class_NSCustomImageRep = object
   val o = Classes.find "NSCustomImageRep"
   method _new = (Objc.objcnew o : [`NSCustomImageRep] nativeNSObject)
end
(* Encapsulation for native instance of NSCustomImageRep *)
class native_NSCustomImageRep = fun (o : [`NSCustomImageRep] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithDrawSelector  ~delegate:(anObject : [`NSObject] Objc.t ) (aMethod : selector) =
     let sel, args = (
       Objc.arg aMethod "initWithDrawSelector" make_selector
       ++ Objc.arg anObject "delegate" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method drawSelector =
     (get_selector (Objc.invoke Objc.tag_selector o (Selector.find "drawSelector:")[]) : selector)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
end
