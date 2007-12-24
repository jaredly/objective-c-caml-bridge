(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSString
open NSFont


external init : unit -> unit = "caml_init_NSGlyphInfo"
let _ = init()
let make_NSObject_of_NSGlyphInfo (o : [`NSGlyphInfo] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSGlyphInfo *)
let class_NSGlyphInfo = object
   val repr = Classes.find "NSGlyphInfo"
   method _new = (Objc.objcnew repr : [`NSGlyphInfo] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSGlyphInfo] nativeNSObject)
   method glyphInfoWithGlyphName  ~forFont:(font : [`NSFont] Objc.t ) ~baseString:(theString : [`NSString] Objc.t ) (glyphName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg glyphName "glyphInfoWithGlyphName" make_pointer_from_object
       ++ Objc.arg font "forFont" make_pointer_from_object
       ++ Objc.arg theString "baseString" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSGlyphInfo] Objc.nativeNSObject)
(*  UNSUPPORTED
   method glyphInfoWithGlyph  ~forFont:(font : [`NSFont] Objc.t ) ~baseString:(theString : [`NSString] Objc.t ) (glyph : (*NSGlyph*) unsupported) =
     let sel, args = (
       Objc.arg glyph "glyphInfoWithGlyph" (*NSGlyph*) unsupported
       ++ Objc.arg font "forFont" make_pointer_from_object
       ++ Objc.arg theString "baseString" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSGlyphInfo] Objc.nativeNSObject)

*)
   method glyphInfoWithCharacterIdentifier  ~collection:(characterCollection : int ) ~baseString:(theString : [`NSString] Objc.t ) (cid : int) =
     let sel, args = (
       Objc.arg cid "glyphInfoWithCharacterIdentifier" make_int
       ++ Objc.arg characterCollection "collection" make_int
       ++ Objc.arg theString "baseString" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSGlyphInfo] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSGlyphInfo *)
class native_NSGlyphInfo = fun (o : [`NSGlyphInfo] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSGlyphInfo o) as super
   method glyphName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "glyphName:")[]) : [`NSString] Objc.nativeNSObject)
   method characterIdentifier =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "characterIdentifier:")[]) : int)
   method characterCollection =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "characterCollection:")[]) : int)
end
