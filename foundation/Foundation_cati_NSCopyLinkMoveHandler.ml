(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSCopyLinkMoveHandler of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method fileManager_shouldProceedAfterError  (fm : [`NSFileManager] Objc.t) (errorInfo : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg fm "fileManager" make_pointer_from_object
      ++ Objc.arg errorInfo "shouldProceedAfterError" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method fileManager_willProcessPath  (fm : [`NSFileManager] Objc.t) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fm "fileManager" make_pointer_from_object
      ++ Objc.arg path "willProcessPath" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
