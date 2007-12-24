(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSFontDescriptor"
let _ = init()
(* ENUMS *)
let _NSFontFamilyClassMask = 4026531840L
let _NSFontItalicTrait = 1L
let _NSFontBoldTrait = 2L
let _NSFontExpandedTrait = 32L
let _NSFontCondensedTrait = 64L
let _NSFontMonoSpaceTrait = 1024L
let _NSFontVerticalTrait = 2048L
let _NSFontUIOptimizedTrait = 4096L


let make_NSObject_of_NSFontDescriptor (o : [`NSFontDescriptor] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSFontDescriptor *)
let class_NSFontDescriptor = object
   val repr = Classes.find "NSFontDescriptor"
   method _new = (Objc.objcnew repr : [`NSFontDescriptor] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSFontDescriptor] nativeNSObject)
   method fontDescriptorWithFontAttributes (attributes : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fontDescriptorWithFontAttributes:")[make_pointer_from_object attributes]) : [`NSFontDescriptor] Objc.nativeNSObject)
   method fontDescriptorWithName  ~size:(size : float ) (fontName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fontName "fontDescriptorWithName" make_pointer_from_object
       ++ Objc.arg size "size" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSFontDescriptor] Objc.nativeNSObject)
   (* skipping selector fontDescriptorWithName:matrix *)
end
(* Encapsulation for native instance of NSFontDescriptor *)
class native_NSFontDescriptor = fun (o : [`NSFontDescriptor] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSFontDescriptor o) as super
   method postscriptName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "postscriptName:")[]) : [`NSString] Objc.nativeNSObject)
   method pointSize =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "pointSize:")[]) : float)
   method matrix =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "matrix:")[]) : [`NSAffineTransform] Objc.nativeNSObject)
(*  UNSUPPORTED
   method symbolicTraits =
     ((*NSFontSymbolicTraits*) unsupported (Objc.invoke (*NSFontSymbolicTraits*) Objc.tag_unsupported repr (Selector.find "symbolicTraits:")[]) : (*NSFontSymbolicTraits*) unsupported)

*)
   method objectForKey (anAttribute : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectForKey:")[make_pointer_from_object anAttribute]) : [`NSObject] Objc.nativeNSObject)
   method fontAttributes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fontAttributes:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method initWithFontAttributes (attributes : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithFontAttributes:")[make_pointer_from_object attributes]) : [`NSObject] Objc.nativeNSObject)
   method matchingFontDescriptorsWithMandatoryKeys (mandatoryKeys : [`NSSet] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "matchingFontDescriptorsWithMandatoryKeys:")[make_pointer_from_object mandatoryKeys]) : [`NSArray] Objc.nativeNSObject)
   method fontDescriptorByAddingAttributes (attributes : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fontDescriptorByAddingAttributes:")[make_pointer_from_object attributes]) : [`NSFontDescriptor] Objc.nativeNSObject)
(*  UNSUPPORTED
   method fontDescriptorWithSymbolicTraits (symbolicTraits : (*NSFontSymbolicTraits*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fontDescriptorWithSymbolicTraits:")[(*NSFontSymbolicTraits*) unsupported symbolicTraits]) : [`NSFontDescriptor] Objc.nativeNSObject)

*)
   method fontDescriptorWithSize (newPointSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fontDescriptorWithSize:")[make_float newPointSize]) : [`NSFontDescriptor] Objc.nativeNSObject)
   method fontDescriptorWithMatrix (matrix : [`NSAffineTransform] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fontDescriptorWithMatrix:")[make_pointer_from_object matrix]) : [`NSFontDescriptor] Objc.nativeNSObject)
   method fontDescriptorWithFace (newFace : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fontDescriptorWithFace:")[make_pointer_from_object newFace]) : [`NSFontDescriptor] Objc.nativeNSObject)
   method fontDescriptorWithFamily (newFamily : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fontDescriptorWithFamily:")[make_pointer_from_object newFamily]) : [`NSFontDescriptor] Objc.nativeNSObject)
end
