(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSOpenPanel *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method urls =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "URLs")[])
       : [`NSArray] Objc.id))
  method filenames =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "filenames")[])
       : [`NSArray] Objc.id))
  method resolvesAliases =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "resolvesAliases")[])
       : bool)
  method setResolvesAliases (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setResolvesAliases:")
      [make_bool flag]) : unit)
  method canChooseDirectories =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canChooseDirectories")[])
       : bool)
  method setCanChooseDirectories (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCanChooseDirectories:")
      [make_bool flag]) : unit)
  method allowsMultipleSelection =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsMultipleSelection")[])
       : bool)
  method setAllowsMultipleSelection (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsMultipleSelection:")
      [make_bool flag]) : unit)
  method canChooseFiles =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canChooseFiles")[])
       : bool)
  method setCanChooseFiles (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCanChooseFiles:")
      [make_bool flag]) : unit)
end
