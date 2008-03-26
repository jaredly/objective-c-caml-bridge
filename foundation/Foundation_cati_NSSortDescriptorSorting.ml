(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSSortDescriptorSorting of NSMutableArray *)
class virtual methods_NSMutableArray = object (self)
  method virtual repr : [`NSObject] Objc.id
  method sortUsingDescriptors (sortDescriptors : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sortUsingDescriptors:")
      [make_pointer_from_object sortDescriptors]) : unit)
end
(* instance methods for category NSSortDescriptorSorting of NSArray *)
class virtual methods_NSArray = object (self)
  method virtual repr : [`NSObject] Objc.id
  method sortedArrayUsingDescriptors (sortDescriptors : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sortedArrayUsingDescriptors:")
      [make_pointer_from_object sortDescriptors]) : [`NSArray] Objc.id))
end
