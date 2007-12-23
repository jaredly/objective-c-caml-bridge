open Objc
open NSObject


external init : unit -> unit = "caml_init_NSFontDescriptor"
let _ = init()
(* Class object for NSFontDescriptor *)
let class_NSFontDescriptor = object
   val o = Classes.find "NSFontDescriptor"
   method _new = (Objc.objcnew o : [`NSFontDescriptor] nativeNSObject)
   method fontDescriptorWithFontAttributes (attributes : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fontDescriptorWithFontAttributes:")[make_pointer_from_object attributes]) : [`NSFontDescriptor] Objc.nativeNSObject)
   method fontDescriptorWithName  ~size:(size : float ) (fontName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fontName "fontDescriptorWithName" make_pointer_from_object
       ++ Objc.arg size "size" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSFontDescriptor] Objc.nativeNSObject)
   (* skipping selector fontDescriptorWithName:matrix *)
end
(* Encapsulation for native instance of NSFontDescriptor *)
class native_NSFontDescriptor = fun (o : [`NSFontDescriptor] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method postscriptName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "postscriptName:")[]) : [`NSString] Objc.nativeNSObject)
   method pointSize =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "pointSize:")[]) : float)
   method matrix =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "matrix:")[]) : [`NSAffineTransform] Objc.nativeNSObject)
(*  UNSUPPORTED
   method symbolicTraits =
     ((*NSFontSymbolicTraits*) unsupported (Objc.invoke (*NSFontSymbolicTraits*) Objc.tag_unsupported o (Selector.find "symbolicTraits:")[]) : (*NSFontSymbolicTraits*) unsupported)

*)
   method objectForKey (anAttribute : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectForKey:")[make_pointer_from_object anAttribute]) : [`NSObject] Objc.nativeNSObject)
   method fontAttributes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fontAttributes:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method initWithFontAttributes (attributes : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithFontAttributes:")[make_pointer_from_object attributes]) : [`NSObject] Objc.nativeNSObject)
   method matchingFontDescriptorsWithMandatoryKeys (mandatoryKeys : [`NSSet] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "matchingFontDescriptorsWithMandatoryKeys:")[make_pointer_from_object mandatoryKeys]) : [`NSArray] Objc.nativeNSObject)
   method fontDescriptorByAddingAttributes (attributes : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fontDescriptorByAddingAttributes:")[make_pointer_from_object attributes]) : [`NSFontDescriptor] Objc.nativeNSObject)
(*  UNSUPPORTED
   method fontDescriptorWithSymbolicTraits (symbolicTraits : (*NSFontSymbolicTraits*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fontDescriptorWithSymbolicTraits:")[(*NSFontSymbolicTraits*) unsupported symbolicTraits]) : [`NSFontDescriptor] Objc.nativeNSObject)

*)
   method fontDescriptorWithSize (newPointSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fontDescriptorWithSize:")[make_float newPointSize]) : [`NSFontDescriptor] Objc.nativeNSObject)
   method fontDescriptorWithMatrix (matrix : [`NSAffineTransform] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fontDescriptorWithMatrix:")[make_pointer_from_object matrix]) : [`NSFontDescriptor] Objc.nativeNSObject)
   method fontDescriptorWithFace (newFace : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fontDescriptorWithFace:")[make_pointer_from_object newFace]) : [`NSFontDescriptor] Objc.nativeNSObject)
   method fontDescriptorWithFamily (newFamily : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fontDescriptorWithFamily:")[make_pointer_from_object newFamily]) : [`NSFontDescriptor] Objc.nativeNSObject)
end
