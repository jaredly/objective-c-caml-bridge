(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSNetService.methods
end

class t = fun (r :[`NSNetService] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSNetService *)
let c = Classes.find "NSNetService"
let _new()= (Objc.objcnew c : [`NSNetService] id)
let alloc() = (Objc.objcalloc c : [`NSNetService] id)
let dictionaryFromTXTRecordData (txtData : [`NSData] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dictionaryFromTXTRecordData:")
      [make_pointer_from_object txtData]) : [`NSDictionary] Objc.id))
let dataFromTXTRecordDictionary (txtDictionary : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dataFromTXTRecordDictionary:")
      [make_pointer_from_object txtDictionary]) : [`NSData] Objc.id))
