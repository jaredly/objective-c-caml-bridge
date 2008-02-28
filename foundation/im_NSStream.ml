(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSStream *)
class virtual methods = object (self)
  method virtual repr : [`NSStream] Objc.id
  method open_ =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "open")[])
       : unit)
  method close =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "close")[])
       : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method propertyForKey (key : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "propertyForKey:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
  method setProperty  ~forKey:(key : [`NSString] Objc.t ) (property : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg property "setProperty" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
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
  method streamStatus =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "streamStatus")[])
       : int)
  method streamError =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "streamError")[])
       : [`NSError] Objc.id))
end
