(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSNetServiceBrowser *)
class virtual methods = object (self)
  method virtual repr : [`NSNetServiceBrowser] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method scheduleInRunLoop  ~forMode:(mode : [`NSString] Objc.t ) (aRunLoop : [`NSRunLoop] Objc.t) =
    let sel, args = (
      Objc.arg aRunLoop "scheduleInRunLoop" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeFromRunLoop  ~forMode:(mode : [`NSString] Objc.t ) (aRunLoop : [`NSRunLoop] Objc.t) =
    let sel, args = (
      Objc.arg aRunLoop "removeFromRunLoop" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method searchForBrowsableDomains =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "searchForBrowsableDomains")[])
       : unit)
  method searchForRegistrationDomains =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "searchForRegistrationDomains")[])
       : unit)
  method searchForServicesOfType  ~inDomain:(domainString : [`NSString] Objc.t ) (_type : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _type "searchForServicesOfType" make_pointer_from_object
      ++ Objc.arg domainString "inDomain" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method stop =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stop")[])
       : unit)
end
