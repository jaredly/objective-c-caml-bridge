open Objc
open NSURL


external init : unit -> unit = "caml_init_NSPasteboard"
let _ = init()
(* Class object for NSURL *)
let class_NSURL = object
   val o = Classes.find "NSURL"
   method _new = (Objc.objcnew o : [`NSURL] nativeNSObject)
(* methods for category NSPasteboardSupport *)
   method l_URLFromPasteboard (pasteBoard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_URLFromPasteboard:")[make_pointer_from_object pasteBoard]) : [`NSURL] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSURL *)
class native_NSURL = fun (o : [`NSURL] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSPasteboardSupport *)
   method writeToPasteboard (pasteBoard : [`NSPasteboard] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "writeToPasteboard:")[make_pointer_from_object pasteBoard]) : unit)
end
(* Class object for NSPasteboard *)
let class_NSPasteboard = object
   val o = Classes.find "NSPasteboard"
   method _new = (Objc.objcnew o : [`NSPasteboard] nativeNSObject)
(* methods for category NSFileContents *)
   method generalPasteboard =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "generalPasteboard:")[]) : [`NSPasteboard] Objc.nativeNSObject)
   method pasteboardWithName (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pasteboardWithName:")[make_pointer_from_object name]) : [`NSPasteboard] Objc.nativeNSObject)
   method pasteboardWithUniqueName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pasteboardWithUniqueName:")[]) : [`NSPasteboard] Objc.nativeNSObject)
   method typesFilterableTo (_type : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "typesFilterableTo:")[make_pointer_from_object _type]) : [`NSArray] Objc.nativeNSObject)
   method pasteboardByFilteringFile (filename : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pasteboardByFilteringFile:")[make_pointer_from_object filename]) : [`NSPasteboard] Objc.nativeNSObject)
   method pasteboardByFilteringData  ~ofType:(_type : [`NSString] Objc.t ) (data : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg data "pasteboardByFilteringData" make_pointer_from_object
       ++ Objc.arg _type "ofType" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSPasteboard] Objc.nativeNSObject)
   method pasteboardByFilteringTypesInPasteboard (pboard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pasteboardByFilteringTypesInPasteboard:")[make_pointer_from_object pboard]) : [`NSPasteboard] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPasteboard *)
class native_NSPasteboard = fun (o : [`NSPasteboard] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSFileContents *)
   method writeFileContents (filename : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "writeFileContents:")[make_pointer_from_object filename]) : bool)
   method readFileContentsType  ~toFile:(filename : [`NSString] Objc.t ) (_type : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg _type "readFileContentsType" make_pointer_from_object
       ++ Objc.arg filename "toFile" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
   method writeFileWrapper (wrapper : [`NSFileWrapper] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "writeFileWrapper:")[make_pointer_from_object wrapper]) : bool)
   method readFileWrapper =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "readFileWrapper:")[]) : [`NSFileWrapper] Objc.nativeNSObject)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method releaseGlobally =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "releaseGlobally:")[]) : unit)
   method declareTypes  ~owner:(newOwner : [`NSObject] Objc.t ) (newTypes : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg newTypes "declareTypes" make_pointer_from_object
       ++ Objc.arg newOwner "owner" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int o (Selector.find_list sel) args) : int)
   method addTypes  ~owner:(newOwner : [`NSObject] Objc.t ) (newTypes : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg newTypes "addTypes" make_pointer_from_object
       ++ Objc.arg newOwner "owner" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int o (Selector.find_list sel) args) : int)
   method changeCount =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "changeCount:")[]) : int)
   method types =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "types:")[]) : [`NSArray] Objc.nativeNSObject)
   method availableTypeFromArray (types : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "availableTypeFromArray:")[make_pointer_from_object types]) : [`NSString] Objc.nativeNSObject)
   method setData  ~forType:(dataType : [`NSString] Objc.t ) (data : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg data "setData" make_pointer_from_object
       ++ Objc.arg dataType "forType" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method dataForType (dataType : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dataForType:")[make_pointer_from_object dataType]) : [`NSData] Objc.nativeNSObject)
   method setPropertyList  ~forType:(dataType : [`NSString] Objc.t ) (plist : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg plist "setPropertyList" make_pointer_from_object
       ++ Objc.arg dataType "forType" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method propertyListForType (dataType : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "propertyListForType:")[make_pointer_from_object dataType]) : [`NSObject] Objc.nativeNSObject)
   method setString  ~forType:(dataType : [`NSString] Objc.t ) (string : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg string "setString" make_pointer_from_object
       ++ Objc.arg dataType "forType" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method stringForType (dataType : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringForType:")[make_pointer_from_object dataType]) : [`NSString] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSPasteboardOwner *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSPasteboardOwner *)
   method pasteboard  ~provideDataForType:(_type : [`NSString] Objc.t ) (sender : [`NSPasteboard] Objc.t) =
     let sel, args = (
       Objc.arg sender "pasteboard" make_pointer_from_object
       ++ Objc.arg _type "provideDataForType" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method pasteboardChangedOwner (sender : [`NSPasteboard] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pasteboardChangedOwner:")[make_pointer_from_object sender]) : unit)
end
