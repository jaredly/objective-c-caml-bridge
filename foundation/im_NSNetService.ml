(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSNetService *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithDomain_type_name_port  (domain : [`NSString] Objc.t) (_type : [`NSString] Objc.t) (name : [`NSString] Objc.t) (port : int) =
    let sel, args = (
      Objc.arg domain "initWithDomain" make_pointer_from_object
      ++ Objc.arg _type "type" make_pointer_from_object
      ++ Objc.arg name "name" make_pointer_from_object
      ++ Objc.arg port "port" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithDomain_type_name  (domain : [`NSString] Objc.t) (_type : [`NSString] Objc.t) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg domain "initWithDomain" make_pointer_from_object
      ++ Objc.arg _type "type" make_pointer_from_object
      ++ Objc.arg name "name" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method scheduleInRunLoop_forMode  (aRunLoop : [`NSRunLoop] Objc.t) (mode : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg aRunLoop "scheduleInRunLoop" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeFromRunLoop_forMode  (aRunLoop : [`NSRunLoop] Objc.t) (mode : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg aRunLoop "removeFromRunLoop" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method domain =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "domain")[])
       : [`NSString] Objc.id))
  method _type =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "type")[])
       : [`NSString] Objc.id))
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method addresses =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "addresses")[])
       : [`NSArray] Objc.id))
  method publish =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "publish")[])
       : unit)
  method stop =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stop")[])
       : unit)
(*  UNSUPPORTED
  method getInputStream_outputStream  (inputStream : (*pointer to pointer to NSInputStream*) unsupported) (outputStream : (*pointer to pointer to NSOutputStream*) unsupported) =
    let sel, args = (
      Objc.arg inputStream "getInputStream" (*pointer to pointer to NSInputStream*) unsupported
      ++ Objc.arg outputStream "outputStream" (*pointer to pointer to NSOutputStream*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method resolveWithTimeout (timeout : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resolveWithTimeout:")
      [make_float timeout]) : unit)
  method setTXTRecordData (recordData : [`NSData] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "setTXTRecordData:")
      [make_pointer_from_object recordData]) : bool)
  method getTXTRecordData =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "TXTRecordData")[])
       : [`NSData] Objc.id))
  method startMonitoring =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "startMonitoring")[])
       : unit)
  method stopMonitoring =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stopMonitoring")[])
       : unit)
  method hostName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "hostName")[])
       : [`NSString] Objc.id))
end
