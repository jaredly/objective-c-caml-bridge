(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSURLDownload"
let _ = init()
let make_NSObject_of_NSURLDownload (o : [`NSURLDownload] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSURLDownload *)
let class_NSURLDownload = object
   val repr = Classes.find "NSURLDownload"
   method _new = (Objc.objcnew repr : [`NSURLDownload] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSURLDownload] nativeNSObject)
   method canResumeDownloadDecodedWithEncodingMIMEType (_MIMEType : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "canResumeDownloadDecodedWithEncodingMIMEType:")[make_pointer_from_object _MIMEType]) : [`NSURLDownload] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSURLDownload *)
class native_NSURLDownload = fun (o : [`NSURLDownload] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSURLDownload o) as super
   method initWithRequest  ~delegate:(delegate : [`NSObject] Objc.t ) (request : [`NSURLRequest] Objc.t) =
     let sel, args = (
       Objc.arg request "initWithRequest" make_pointer_from_object
       ++ Objc.arg delegate "delegate" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithResumeData  ~delegate:(delegate : [`NSObject] Objc.t ) ~path:(path : [`NSString] Objc.t ) (resumeData : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg resumeData "initWithResumeData" make_pointer_from_object
       ++ Objc.arg delegate "delegate" make_pointer_from_object
       ++ Objc.arg path "path" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method cancel =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "cancel:")[]) : unit)
   method setDestination  ~allowOverwrite:(allowOverwrite : bool ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "setDestination" make_pointer_from_object
       ++ Objc.arg allowOverwrite "allowOverwrite" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method request =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "request:")[]) : [`NSURLRequest] Objc.nativeNSObject)
   method resumeData =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resumeData:")[]) : [`NSData] Objc.nativeNSObject)
   method setDeletesFileUponFailure (deletesFileUponFailure : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDeletesFileUponFailure:")[make_bool deletesFileUponFailure]) : unit)
   method deletesFileUponFailure =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "deletesFileUponFailure:")[]) : bool)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSURLDownloadDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSURLDownloadDelegate *)
   method downloadDidBegin (download : [`NSURLDownload] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "downloadDidBegin:")[make_pointer_from_object download]) : unit)
   method download  ?willSendRequest:(request : [`NSURLRequest] Objc.t option) ?redirectResponse:(redirectResponse : [`NSURLResponse] Objc.t option) (download : [`NSURLDownload] Objc.t) =
     let sel, args = (
       Objc.arg download "download" make_pointer_from_object
       ++ Objc.opt_arg request "willSendRequest" make_pointer_from_object
       ++ Objc.opt_arg redirectResponse "redirectResponse" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSURLRequest] Objc.nativeNSObject)
   (* skipping selector download:didReceiveAuthenticationChallenge *)
   (* skipping selector download:didCancelAuthenticationChallenge *)
   (* skipping selector download:didReceiveResponse *)
   (* skipping selector download:willResumeWithResponse:fromByte *)
   (* skipping selector download:didReceiveDataOfLength *)
   (* skipping selector download:shouldDecodeSourceDataOfMIMEType *)
   (* skipping selector download:decideDestinationWithSuggestedFilename *)
   (* skipping selector download:didCreateDestination *)
   method downloadDidFinish (download : [`NSURLDownload] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "downloadDidFinish:")[make_pointer_from_object download]) : unit)
   (* skipping selector download:didFailWithError *)
end
