(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLResponse *)
class virtual methods = object (self)
  method virtual repr : [`NSURLResponse] Objc.id
  method initWithURL  ~l_MIMEType:(_MIMEType : [`NSString] Objc.t ) ~expectedContentLength:(length : int ) ~textEncodingName:(name : [`NSString] Objc.t ) (_URL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg _URL "initWithURL" make_pointer_from_object
      ++ Objc.arg _MIMEType "l_MIMEType" make_pointer_from_object
      ++ Objc.arg length "expectedContentLength" make_int
      ++ Objc.arg name "textEncodingName" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method l_URL =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_URL")[])
       : [`NSURL] Objc.id))
  method l_MIMEType =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_MIMEType")[])
       : [`NSString] Objc.id))
  method expectedContentLength =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "expectedContentLength")[])
       : int64)
  method textEncodingName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textEncodingName")[])
       : [`NSString] Objc.id))
  method suggestedFilename =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "suggestedFilename")[])
       : [`NSString] Objc.id))
end
