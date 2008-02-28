(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSocketPort *)
class virtual methods = object (self)
  method virtual repr : [`NSSocketPort] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method initWithTCPPort (port : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithTCPPort:")
      [make_int port]) : [`NSObject] Objc.id)
  method initWithProtocolFamily  ~socketType:(_type : int ) ~protocol:(protocol : int ) ~address:(address : [`NSData] Objc.t ) (family : int) =
    let sel, args = (
      Objc.arg family "initWithProtocolFamily" make_int
      ++ Objc.arg _type "socketType" make_int
      ++ Objc.arg protocol "protocol" make_int
      ++ Objc.arg address "address" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithProtocolFamily:socketType:protocol:socket *)
  method initRemoteWithTCPPort  ~host:(hostName : [`NSString] Objc.t ) (port : int) =
    let sel, args = (
      Objc.arg port "initRemoteWithTCPPort" make_int
      ++ Objc.arg hostName "host" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initRemoteWithProtocolFamily  ~socketType:(_type : int ) ~protocol:(protocol : int ) ~address:(address : [`NSData] Objc.t ) (family : int) =
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
