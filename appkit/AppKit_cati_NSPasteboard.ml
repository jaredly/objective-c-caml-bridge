(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSPasteboard of NSTextView *)
class virtual methods_NSTextView = object (self)
  method virtual repr : [`NSObject] Objc.id
  method writablePasteboardTypes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "writablePasteboardTypes")[])
       : [`NSArray] Objc.id))
  method writeSelectionToPasteboard_type  (pboard : [`NSPasteboard] Objc.t) (_type : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg pboard "writeSelectionToPasteboard" make_pointer_from_object
      ++ Objc.arg _type "type" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeSelectionToPasteboard_types  (pboard : [`NSPasteboard] Objc.t) (types : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg pboard "writeSelectionToPasteboard" make_pointer_from_object
      ++ Objc.arg types "types" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method readablePasteboardTypes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "readablePasteboardTypes")[])
       : [`NSArray] Objc.id))
  method preferredPasteboardTypeFromArray_restrictedToTypesFromArray  (availableTypes : [`NSArray] Objc.t) (allowedTypes : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg availableTypes "preferredPasteboardTypeFromArray" make_pointer_from_object
      ++ Objc.arg allowedTypes "restrictedToTypesFromArray" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method readSelectionFromPasteboard_type  (pboard : [`NSPasteboard] Objc.t) (_type : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg pboard "readSelectionFromPasteboard" make_pointer_from_object
      ++ Objc.arg _type "type" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method readSelectionFromPasteboard (pboard : [`NSPasteboard] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "readSelectionFromPasteboard:")
      [make_pointer_from_object pboard]) : bool)
  method validRequestorForSendType_returnType  (sendType : [`NSString] Objc.t) (returnType : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg sendType "validRequestorForSendType" make_pointer_from_object
      ++ Objc.arg returnType "returnType" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method pasteAsPlainText (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "pasteAsPlainText:")
      [make_pointer_from_object sender]) : unit)
  method pasteAsRichText (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "pasteAsRichText:")
      [make_pointer_from_object sender]) : unit)
end
