open Objc
open NSView
open NSSpellProtocol


external init : unit -> unit = "caml_init_NSText"
let _ = init()
(* Class object for NSText *)
let class_NSText = object
   val o = Classes.find "NSText"
   method _new = (Objc.objcnew o : [`NSText] nativeNSObject)
end
(* Encapsulation for native instance of NSText *)
class native_NSText = fun (o : [`NSText] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method string =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "string:")[]) : [`NSString] Objc.nativeNSObject)
   method setString (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setString:")[make_pointer_from_object string]) : unit)
   method replaceCharactersInRange  ?withString:(aString : [`NSString] Objc.t option) (range : int * int) =
     let sel, args = (
       Objc.arg range "replaceCharactersInRange" make_range
       ++ Objc.opt_arg aString "withString" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   (* skipping selector replaceCharactersInRange:withRTF *)
   (* skipping selector replaceCharactersInRange:withRTFD *)
   method l_RTFFromRange (range : int * int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_RTFFromRange:")[make_range range]) : [`NSData] Objc.nativeNSObject)
   method l_RTFDFromRange (range : int * int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_RTFDFromRange:")[make_range range]) : [`NSData] Objc.nativeNSObject)
   method writeRTFDToFile  ~atomically:(flag : bool ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "writeRTFDToFile" make_pointer_from_object
       ++ Objc.arg flag "atomically" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method readRTFDFromFile (path : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "readRTFDFromFile:")[make_pointer_from_object path]) : bool)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method isEditable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEditable:")[]) : bool)
   method setEditable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setEditable:")[make_bool flag]) : unit)
   method isSelectable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isSelectable:")[]) : bool)
   method setSelectable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSelectable:")[make_bool flag]) : unit)
   method isRichText =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isRichText:")[]) : bool)
   method setRichText (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRichText:")[make_bool flag]) : unit)
   method importsGraphics =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "importsGraphics:")[]) : bool)
   method setImportsGraphics (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setImportsGraphics:")[make_bool flag]) : unit)
   method setBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBackgroundColor:")[make_pointer_from_object color]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setDrawsBackground (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDrawsBackground:")[make_bool flag]) : unit)
   method drawsBackground =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "drawsBackground:")[]) : bool)
   (* skipping selector setFont *)
   method font =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "font:")[]) : [`NSFont] Objc.nativeNSObject)
   (* skipping selector setTextColor *)
   method textColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method alignment =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "alignment:")[]) : int)
   method setAlignment (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAlignment:")[make_int mode]) : unit)
   method baseWritingDirection =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "baseWritingDirection:")[]) : int)
   method setBaseWritingDirection (writingDirection : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBaseWritingDirection:")[make_int writingDirection]) : unit)
   method setFieldEditor (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFieldEditor:")[make_bool flag]) : unit)
   method isFieldEditor =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isFieldEditor:")[]) : bool)
   method setTextColor  ?range:(range : (int * int) option) (color : [`NSColor] Objc.t) =
     let sel, args = (
       Objc.arg color "setTextColor" make_pointer_from_object
       ++ Objc.opt_arg range "range" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method setFont  ?range:(range : (int * int) option) (font : [`NSFont] Objc.t) =
     let sel, args = (
       Objc.arg font "setFont" make_pointer_from_object
       ++ Objc.opt_arg range "range" make_range
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method usesFontPanel =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "usesFontPanel:")[]) : bool)
   method setUsesFontPanel (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setUsesFontPanel:")[make_bool flag]) : unit)
(*  UNSUPPORTED
   method maxSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "maxSize:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setMaxSize (newMaxSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMaxSize:")[(*NSSize*) unsupported newMaxSize]) : unit)

*)
(*  UNSUPPORTED
   method minSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "minSize:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setMinSize (newMinSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinSize:")[(*NSSize*) unsupported newMinSize]) : unit)

*)
   method isHorizontallyResizable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isHorizontallyResizable:")[]) : bool)
   method setHorizontallyResizable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHorizontallyResizable:")[make_bool flag]) : unit)
   method isVerticallyResizable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isVerticallyResizable:")[]) : bool)
   method setVerticallyResizable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setVerticallyResizable:")[make_bool flag]) : unit)
   method sizeToFit =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "sizeToFit:")[]) : unit)
   method copy (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "copy:")[make_pointer_from_object sender]) : unit)
   method copyFont (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "copyFont:")[make_pointer_from_object sender]) : unit)
   method copyRuler (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "copyRuler:")[make_pointer_from_object sender]) : unit)
   method cut (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "cut:")[make_pointer_from_object sender]) : unit)
   method delete (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "delete:")[make_pointer_from_object sender]) : unit)
   method paste (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "paste:")[make_pointer_from_object sender]) : unit)
   method pasteFont (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pasteFont:")[make_pointer_from_object sender]) : unit)
   method pasteRuler (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pasteRuler:")[make_pointer_from_object sender]) : unit)
   method selectAll (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectAll:")[make_pointer_from_object sender]) : unit)
   method changeFont (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "changeFont:")[make_pointer_from_object sender]) : unit)
   method alignLeft (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "alignLeft:")[make_pointer_from_object sender]) : unit)
   method alignRight (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "alignRight:")[make_pointer_from_object sender]) : unit)
   method alignCenter (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "alignCenter:")[make_pointer_from_object sender]) : unit)
   method subscript (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "subscript:")[make_pointer_from_object sender]) : unit)
   method superscript (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "superscript:")[make_pointer_from_object sender]) : unit)
   method underline (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "underline:")[make_pointer_from_object sender]) : unit)
   method unscript (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "unscript:")[make_pointer_from_object sender]) : unit)
   method showGuessPanel (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "showGuessPanel:")[make_pointer_from_object sender]) : unit)
   method checkSpelling (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "checkSpelling:")[make_pointer_from_object sender]) : unit)
   method toggleRuler (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "toggleRuler:")[make_pointer_from_object sender]) : unit)
   method isRulerVisible =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isRulerVisible:")[]) : bool)
   method selectedRange =
     (get_range (Objc.invoke Objc.tag_nsrange o (Selector.find "selectedRange:")[]) : (int * int))
   method setSelectedRange (range : int * int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSelectedRange:")[make_range range]) : unit)
   method scrollRangeToVisible (range : int * int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollRangeToVisible:")[make_range range]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSTextDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSTextDelegate *)
   method textShouldBeginEditing (textObject : [`NSText] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "textShouldBeginEditing:")[make_pointer_from_object textObject]) : bool)
   method textShouldEndEditing (textObject : [`NSText] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "textShouldEndEditing:")[make_pointer_from_object textObject]) : bool)
   method textDidBeginEditing (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "textDidBeginEditing:")[make_pointer_from_object notification]) : unit)
   method textDidEndEditing (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "textDidEndEditing:")[make_pointer_from_object notification]) : unit)
   method textDidChange (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "textDidChange:")[make_pointer_from_object notification]) : unit)
end
