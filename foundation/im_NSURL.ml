(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURL *)
class virtual methods = object (self)
  method virtual repr : [`NSURL] Objc.id
  method initWithScheme  ~host:(host : [`NSString] Objc.t ) ~path:(path : [`NSString] Objc.t ) (scheme : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg scheme "initWithScheme" make_pointer_from_object
      ++ Objc.arg host "host" make_pointer_from_object
      ++ Objc.arg path "path" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initFileURLWithPath (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initFileURLWithPath:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  (* skipping selector initWithString *)
  method initWithString  ?relativeToURL:(baseURL : [`NSURL] Objc.t option) (_URLString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _URLString "initWithString" make_pointer_from_object
      ++ Objc.opt_arg baseURL "relativeToURL" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method absoluteString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "absoluteString")[])
       : [`NSString] Objc.id))
  method relativeString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "relativeString")[])
       : [`NSString] Objc.id))
  method baseURL =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "baseURL")[])
       : [`NSURL] Objc.id))
  method absoluteURL =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "absoluteURL")[])
       : [`NSURL] Objc.id))
  method scheme =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "scheme")[])
       : [`NSString] Objc.id))
  method resourceSpecifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "resourceSpecifier")[])
       : [`NSString] Objc.id))
  method host =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "host")[])
       : [`NSString] Objc.id))
  method port =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "port")[])
       : [`NSNumber] Objc.id))
  method user =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "user")[])
       : [`NSString] Objc.id))
  method password =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "password")[])
       : [`NSString] Objc.id))
  method path =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "path")[])
       : [`NSString] Objc.id))
  method fragment =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fragment")[])
       : [`NSString] Objc.id))
  method parameterString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "parameterString")[])
       : [`NSString] Objc.id))
  method query =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "query")[])
       : [`NSString] Objc.id))
  method relativePath =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "relativePath")[])
       : [`NSString] Objc.id))
  method isFileURL =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFileURL")[])
       : bool)
  method standardizedURL =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "standardizedURL")[])
       : [`NSURL] Objc.id))
end
