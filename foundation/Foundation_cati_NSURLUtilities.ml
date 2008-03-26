(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSURLUtilities of NSString *)
class virtual methods_NSString = object (self)
  method virtual repr : [`NSObject] Objc.id
  method stringByAddingPercentEscapesUsingEncoding (enc : int64) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByAddingPercentEscapesUsingEncoding:")
      [make_int64 enc]) : [`NSString] Objc.id))
  method stringByReplacingPercentEscapesUsingEncoding (enc : int64) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringByReplacingPercentEscapesUsingEncoding:")
      [make_int64 enc]) : [`NSString] Objc.id))
end
