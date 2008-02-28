(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSCompletion of NSTextView *)
class virtual methods_NSTextView = object (self)
  method virtual repr : [`NSTextView] Objc.id
  method complete (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "complete:")
      [make_pointer_from_object sender]) : unit)
  method rangeForUserCompletion =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "rangeForUserCompletion")[])
       : (int * int))
  method completionsForPartialWordRange  ~indexOfSelectedItem:(index : [`int] Objc.t ) (charRange : int * int) =
    let sel, args = (
      Objc.arg charRange "completionsForPartialWordRange" make_range
      ++ Objc.arg index "indexOfSelectedItem" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
  method insertCompletion  ~forPartialWordRange:(charRange : (int * int) ) ~movement:(movement : int ) ~isFinal:(flag : bool ) (word : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg word "insertCompletion" make_pointer_from_object
      ++ Objc.arg charRange "forPartialWordRange" make_range
      ++ Objc.arg movement "movement" make_int
      ++ Objc.arg flag "isFinal" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
