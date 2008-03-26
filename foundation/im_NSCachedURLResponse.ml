(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCachedURLResponse *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithResponse_data  (response : [`NSURLResponse] Objc.t) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg response "initWithResponse" make_pointer_from_object
      ++ Objc.arg data "data" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithResponse_data_userInfo_storagePolicy  (response : [`NSURLResponse] Objc.t) (data : [`NSData] Objc.t) (userInfo : [`NSDictionary] Objc.t) (storagePolicy : int) =
    let sel, args = (
      Objc.arg response "initWithResponse" make_pointer_from_object
      ++ Objc.arg data "data" make_pointer_from_object
      ++ Objc.arg userInfo "userInfo" make_pointer_from_object
      ++ Objc.arg storagePolicy "storagePolicy" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method response =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "response")[])
       : [`NSURLResponse] Objc.id))
  method data =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "data")[])
       : [`NSData] Objc.id))
  method userInfo =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "userInfo")[])
       : [`NSDictionary] Objc.id))
  method storagePolicy =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "storagePolicy")[])
       : int)
end
