(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSURLDownloadDelegate of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method downloadDidBegin (download : [`NSURLDownload] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "downloadDidBegin:")
      [make_pointer_from_object download]) : unit)
  method download_willSendRequest_redirectResponse  (download : [`NSURLDownload] Objc.t) (request : [`NSURLRequest] Objc.t) (redirectResponse : [`NSURLResponse] Objc.t) =
    let sel, args = (
      Objc.arg download "download" make_pointer_from_object
      ++ Objc.arg request "willSendRequest" make_pointer_from_object
      ++ Objc.arg redirectResponse "redirectResponse" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSURLRequest] Objc.id))
  method download_didReceiveAuthenticationChallenge  (download : [`NSURLDownload] Objc.t) (challenge : [`NSURLAuthenticationChallenge] Objc.t) =
    let sel, args = (
      Objc.arg download "download" make_pointer_from_object
      ++ Objc.arg challenge "didReceiveAuthenticationChallenge" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method download_didCancelAuthenticationChallenge  (download : [`NSURLDownload] Objc.t) (challenge : [`NSURLAuthenticationChallenge] Objc.t) =
    let sel, args = (
      Objc.arg download "download" make_pointer_from_object
      ++ Objc.arg challenge "didCancelAuthenticationChallenge" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method download_didReceiveResponse  (download : [`NSURLDownload] Objc.t) (response : [`NSURLResponse] Objc.t) =
    let sel, args = (
      Objc.arg download "download" make_pointer_from_object
      ++ Objc.arg response "didReceiveResponse" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method download_willResumeWithResponse_fromByte  (download : [`NSURLDownload] Objc.t) (response : [`NSURLResponse] Objc.t) (startingByte : int64) =
    let sel, args = (
      Objc.arg download "download" make_pointer_from_object
      ++ Objc.arg response "willResumeWithResponse" make_pointer_from_object
      ++ Objc.arg startingByte "fromByte" make_int64
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method download_didReceiveDataOfLength  (download : [`NSURLDownload] Objc.t) (length : int) =
    let sel, args = (
      Objc.arg download "download" make_pointer_from_object
      ++ Objc.arg length "didReceiveDataOfLength" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method download_shouldDecodeSourceDataOfMIMEType  (download : [`NSURLDownload] Objc.t) (encodingType : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg download "download" make_pointer_from_object
      ++ Objc.arg encodingType "shouldDecodeSourceDataOfMIMEType" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method download_decideDestinationWithSuggestedFilename  (download : [`NSURLDownload] Objc.t) (filename : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg download "download" make_pointer_from_object
      ++ Objc.arg filename "decideDestinationWithSuggestedFilename" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method download_didCreateDestination  (download : [`NSURLDownload] Objc.t) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg download "download" make_pointer_from_object
      ++ Objc.arg path "didCreateDestination" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method downloadDidFinish (download : [`NSURLDownload] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "downloadDidFinish:")
      [make_pointer_from_object download]) : unit)
  method download_didFailWithError  (download : [`NSURLDownload] Objc.t) (error : [`NSError] Objc.t) =
    let sel, args = (
      Objc.arg download "download" make_pointer_from_object
      ++ Objc.arg error "didFailWithError" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
