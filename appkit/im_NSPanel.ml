(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPanel *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method isFloatingPanel =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFloatingPanel")[])
       : bool)
  method setFloatingPanel (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFloatingPanel:")
      [make_bool flag]) : unit)
  method becomesKeyOnlyIfNeeded =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "becomesKeyOnlyIfNeeded")[])
       : bool)
  method setBecomesKeyOnlyIfNeeded (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBecomesKeyOnlyIfNeeded:")
      [make_bool flag]) : unit)
  method worksWhenModal =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "worksWhenModal")[])
       : bool)
  method setWorksWhenModal (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWorksWhenModal:")
      [make_bool flag]) : unit)
end
