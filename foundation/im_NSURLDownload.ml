(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLDownload *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithRequest_delegate  (request : [`NSURLRequest] Objc.t) (delegate : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg request "initWithRequest" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithResumeData_delegate_path  (resumeData : [`NSData] Objc.t) (delegate : [`NSObject] Objc.t) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg resumeData "initWithResumeData" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg path "path" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method cancel =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "cancel")[])
       : unit)
  method setDestination_allowOverwrite  (path : [`NSString] Objc.t) (allowOverwrite : bool) =
    let sel, args = (
      Objc.arg path "setDestination" make_pointer_from_object
      ++ Objc.arg allowOverwrite "allowOverwrite" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method request =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "request")[])
       : [`NSURLRequest] Objc.id))
  method resumeData =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "resumeData")[])
       : [`NSData] Objc.id))
  method setDeletesFileUponFailure (deletesFileUponFailure : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDeletesFileUponFailure:")
      [make_bool deletesFileUponFailure]) : unit)
  method deletesFileUponFailure =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "deletesFileUponFailure")[])
       : bool)
end
