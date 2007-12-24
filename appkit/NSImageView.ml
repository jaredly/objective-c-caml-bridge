(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSControl
open NSImageCell


external init : unit -> unit = "caml_init_NSImageView"
let _ = init()
let make_NSControl_of_NSImageView (o : [`NSImageView] nativeNSObject) = (Obj.magic o : [`NSControl] nativeNSObject)
(* Class object for NSImageView *)
let class_NSImageView = object
   val repr = Classes.find "NSImageView"
   method _new = (Objc.objcnew repr : [`NSImageView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSImageView] nativeNSObject)
end
(* Encapsulation for native instance of NSImageView *)
class native_NSImageView = fun (o : [`NSImageView] nativeNSObject) -> object (self)
   inherit native_NSControl (make_NSControl_of_NSImageView o) as super
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
   method setImage (newImage : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImage:")[make_pointer_from_object newImage]) : unit)
   method imageAlignment =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "imageAlignment:")[]) : int)
   method setImageAlignment (newAlign : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImageAlignment:")[make_int newAlign]) : unit)
   method imageScaling =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "imageScaling:")[]) : int)
   method setImageScaling (newScaling : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImageScaling:")[make_int newScaling]) : unit)
   method imageFrameStyle =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "imageFrameStyle:")[]) : int)
   method setImageFrameStyle (newStyle : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImageFrameStyle:")[make_int newStyle]) : unit)
   method setEditable (yn : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEditable:")[make_bool yn]) : unit)
   method isEditable =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEditable:")[]) : bool)
   method setAnimates (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAnimates:")[make_bool flag]) : unit)
   method animates =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "animates:")[]) : bool)
   method allowsCutCopyPaste =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsCutCopyPaste:")[]) : bool)
   method setAllowsCutCopyPaste (allow : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsCutCopyPaste:")[make_bool allow]) : unit)
end
