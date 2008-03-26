(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSValueRangeExtensions of NSValue *)
class virtual methods_NSValue = object (self)
  method virtual repr : [`NSObject] Objc.id
  method rangeValue =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "rangeValue")[])
       : NSRange.t)
end
