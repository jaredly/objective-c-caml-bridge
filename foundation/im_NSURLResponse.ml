(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLResponse *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithURL_MIMEType_expectedContentLength_textEncodingName  (_URL : [`NSURL] Objc.t) (_MIMEType : [`NSString] Objc.t) (length : int) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg _URL "initWithURL" make_pointer_from_object
      ++ Objc.arg _MIMEType "MIMEType" make_pointer_from_object
      ++ Objc.arg length "expectedContentLength" make_int
      ++ Objc.arg name "textEncodingName" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method url =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "URL")[])
       : [`NSURL] Objc.id))
  method mimeType =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "MIMEType")[])
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
