open Objc
open NSObject
open NSAttributedString


external init : unit -> unit = "caml_init_NSTextStorage"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSTextStorageDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSTextStorageDelegate *)
   method textStorageWillProcessEditing (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "textStorageWillProcessEditing:")[make_pointer_from_object notification]) : unit)
   method textStorageDidProcessEditing (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "textStorageDidProcessEditing:")[make_pointer_from_object notification]) : unit)
end
(* Class object for NSTextStorage *)
let class_NSTextStorage = object
   val o = Classes.find "NSTextStorage"
   method _new = (Objc.objcnew o : [`NSTextStorage] nativeNSObject)
end
(* Encapsulation for native instance of NSTextStorage *)
class native_NSTextStorage = fun (o : [`NSTextStorage] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method addLayoutManager (obj : [`NSLayoutManager] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addLayoutManager:")[make_pointer_from_object obj]) : unit)
   method removeLayoutManager (obj : [`NSLayoutManager] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeLayoutManager:")[make_pointer_from_object obj]) : unit)
   method layoutManagers =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "layoutManagers:")[]) : [`NSArray] Objc.nativeNSObject)
   method edited  ~range:(range : (int * int) ) ~changeInLength:(delta : int ) (editedMask : int) =
     let sel, args = (
       Objc.arg editedMask "edited" make_int
       ++ Objc.arg range "range" make_range
       ++ Objc.arg delta "changeInLength" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method processEditing =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "processEditing:")[]) : unit)
   method invalidateAttributesInRange (range : int * int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "invalidateAttributesInRange:")[make_range range]) : unit)
   method ensureAttributesAreFixedInRange (range : int * int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "ensureAttributesAreFixedInRange:")[make_range range]) : unit)
   method fixesAttributesLazily =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "fixesAttributesLazily:")[]) : bool)
   method editedMask =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "editedMask:")[]) : int)
   method editedRange =
     (get_range (Objc.invoke Objc.tag_nsrange o (Selector.find "editedRange:")[]) : (int * int))
   method changeInLength =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "changeInLength:")[]) : int)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
end
