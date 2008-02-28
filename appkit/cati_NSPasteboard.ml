(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSPasteboard of NSTextView *)
class virtual methods_NSTextView = object (self)
  method virtual repr : [`NSTextView] Objc.id
  method writablePasteboardTypes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "writablePasteboardTypes")[])
       : [`NSArray] Objc.id))
  method writeSelectionToPasteboard  ~l_type:(_type : [`NSString] Objc.t ) (pboard : [`NSPasteboard] Objc.t) =
    let sel, args = (
      Objc.arg pboard "writeSelectionToPasteboard" make_pointer_from_object
      ++ Objc.arg _type "l_type" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  (* skipping selector writeSelectionToPasteboard:types *)
  method readablePasteboardTypes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "readablePasteboardTypes")[])
       : [`NSArray] Objc.id))
  method preferredPasteboardTypeFromArray  ~restrictedToTypesFromArray:(allowedTypes : [`NSArray] Objc.t ) (availableTypes : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg availableTypes "preferredPasteboardTypeFromArray" make_pointer_from_object
      ++ Objc.arg allowedTypes "restrictedToTypesFromArray" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method readSelectionFromPasteboard  ?l_type:(_type : [`NSString] Objc.t option) (pboard : [`NSPasteboard] Objc.t) =
    let sel, args = (
      Objc.arg pboard "readSelectionFromPasteboard" make_pointer_from_object
      ++ Objc.opt_arg _type "l_type" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  (* skipping selector readSelectionFromPasteboard *)
  method validRequestorForSendType  ~returnType:(returnType : [`NSString] Objc.t ) (sendType : [`NSString] Objc.t) =
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
