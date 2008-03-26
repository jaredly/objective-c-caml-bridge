(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSNetServiceBrowserDelegateMethods of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method netServiceBrowserWillSearch (aNetServiceBrowser : [`NSNetServiceBrowser] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "netServiceBrowserWillSearch:")
      [make_pointer_from_object aNetServiceBrowser]) : unit)
  method netServiceBrowser_didFindDomain_moreComing  (aNetServiceBrowser : [`NSNetServiceBrowser] Objc.t) (domainString : [`NSString] Objc.t) (moreComing : bool) =
    let sel, args = (
      Objc.arg aNetServiceBrowser "netServiceBrowser" make_pointer_from_object
      ++ Objc.arg domainString "didFindDomain" make_pointer_from_object
      ++ Objc.arg moreComing "moreComing" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method netServiceBrowser_didFindService_moreComing  (aNetServiceBrowser : [`NSNetServiceBrowser] Objc.t) (aNetService : [`NSNetService] Objc.t) (moreComing : bool) =
    let sel, args = (
      Objc.arg aNetServiceBrowser "netServiceBrowser" make_pointer_from_object
      ++ Objc.arg aNetService "didFindService" make_pointer_from_object
      ++ Objc.arg moreComing "moreComing" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method netServiceBrowser_didNotSearch  (aNetServiceBrowser : [`NSNetServiceBrowser] Objc.t) (errorDict : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg aNetServiceBrowser "netServiceBrowser" make_pointer_from_object
      ++ Objc.arg errorDict "didNotSearch" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method netServiceBrowserDidStopSearch (aNetServiceBrowser : [`NSNetServiceBrowser] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "netServiceBrowserDidStopSearch:")
      [make_pointer_from_object aNetServiceBrowser]) : unit)
  method netServiceBrowser_didRemoveDomain_moreComing  (aNetServiceBrowser : [`NSNetServiceBrowser] Objc.t) (domainString : [`NSString] Objc.t) (moreComing : bool) =
    let sel, args = (
      Objc.arg aNetServiceBrowser "netServiceBrowser" make_pointer_from_object
      ++ Objc.arg domainString "didRemoveDomain" make_pointer_from_object
      ++ Objc.arg moreComing "moreComing" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method netServiceBrowser_didRemoveService_moreComing  (aNetServiceBrowser : [`NSNetServiceBrowser] Objc.t) (aNetService : [`NSNetService] Objc.t) (moreComing : bool) =
    let sel, args = (
      Objc.arg aNetServiceBrowser "netServiceBrowser" make_pointer_from_object
      ++ Objc.arg aNetService "didRemoveService" make_pointer_from_object
      ++ Objc.arg moreComing "moreComing" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
