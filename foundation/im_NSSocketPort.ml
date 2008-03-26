(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSocketPort *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method initWithTCPPort (port : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithTCPPort:")
      [make_int port]) : [`NSObject] Objc.id)
  method initWithProtocolFamily_socketType_protocol_address  (family : int) (_type : int) (protocol : int) (address : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg family "initWithProtocolFamily" make_int
      ++ Objc.arg _type "socketType" make_int
      ++ Objc.arg protocol "protocol" make_int
      ++ Objc.arg address "address" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method initWithProtocolFamily_socketType_protocol_socket  (family : int) (_type : int) (protocol : int) (sock : (*NSSocketNativeHandle*) unsupported) =
    let sel, args = (
      Objc.arg family "initWithProtocolFamily" make_int
      ++ Objc.arg _type "socketType" make_int
      ++ Objc.arg protocol "protocol" make_int
      ++ Objc.arg sock "socket" (*NSSocketNativeHandle*) unsupported
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method initRemoteWithTCPPort_host  (port : int) (hostName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg port "initRemoteWithTCPPort" make_int
      ++ Objc.arg hostName "host" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initRemoteWithProtocolFamily_socketType_protocol_address  (family : int) (_type : int) (protocol : int) (address : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg family "initRemoteWithProtocolFamily" make_int
      ++ Objc.arg _type "socketType" make_int
      ++ Objc.arg protocol "protocol" make_int
      ++ Objc.arg address "address" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method protocolFamily =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "protocolFamily")[])
       : int)
  method socketType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "socketType")[])
       : int)
  method protocol =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "protocol")[])
       : int)
  method address =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "address")[])
       : [`NSData] Objc.id))
(*  UNSUPPORTED
  method socket =
    ((*NSSocketNativeHandle*) unsupported (Objc.invoke (*NSSocketNativeHandle*) Objc.tag_unsupported self#repr (Selector.find "socket")[])
       : (*NSSocketNativeHandle*) unsupported)

*)
end
