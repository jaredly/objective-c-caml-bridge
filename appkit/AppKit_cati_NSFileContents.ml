(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSFileContents of NSPasteboard *)
class virtual methods_NSPasteboard = object (self)
  method virtual repr : [`NSObject] Objc.id
  method writeFileContents (filename : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "writeFileContents:")
      [make_pointer_from_object filename]) : bool)
  method readFileContentsType_toFile  (_type : [`NSString] Objc.t) (filename : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _type "readFileContentsType" make_pointer_from_object
      ++ Objc.arg filename "toFile" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method writeFileWrapper (wrapper : [`NSFileWrapper] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "writeFileWrapper:")
      [make_pointer_from_object wrapper]) : bool)
  method readFileWrapper =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "readFileWrapper")[])
       : [`NSFileWrapper] Objc.id))
end
