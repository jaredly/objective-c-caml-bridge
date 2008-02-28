(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFontDescriptor *)
class virtual methods = object (self)
  method virtual repr : [`NSFontDescriptor] Objc.id
  method postscriptName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "postscriptName")[])
       : [`NSString] Objc.id))
  method pointSize =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "pointSize")[])
       : float)
  method matrix =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "matrix")[])
       : [`NSAffineTransform] Objc.id))
(*  UNSUPPORTED
  method symbolicTraits =
    ((*NSFontSymbolicTraits*) unsupported (Objc.invoke (*NSFontSymbolicTraits*) Objc.tag_unsupported self#repr (Selector.find "symbolicTraits")[])
       : (*NSFontSymbolicTraits*) unsupported)

*)
  method objectForKey (anAttribute : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectForKey:")
      [make_pointer_from_object anAttribute]) : [`NSObject] Objc.id)
  method fontAttributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontAttributes")[])
       : [`NSDictionary] Objc.id))
  method initWithFontAttributes (attributes : [`NSDictionary] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFontAttributes:")
      [make_pointer_from_object attributes]) : [`NSObject] Objc.id)
  method matchingFontDescriptorsWithMandatoryKeys (mandatoryKeys : [`NSSet] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "matchingFontDescriptorsWithMandatoryKeys:")
      [make_pointer_from_object mandatoryKeys]) : [`NSArray] Objc.id))
  method fontDescriptorByAddingAttributes (attributes : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontDescriptorByAddingAttributes:")
      [make_pointer_from_object attributes]) : [`NSFontDescriptor] Objc.id))
(*  UNSUPPORTED
  method fontDescriptorWithSymbolicTraits (symbolicTraits : (*NSFontSymbolicTraits*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontDescriptorWithSymbolicTraits:")
      [(*NSFontSymbolicTraits*) unsupported symbolicTraits]) : [`NSFontDescriptor] Objc.id))

*)
  method fontDescriptorWithSize (newPointSize : float) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontDescriptorWithSize:")
      [make_float newPointSize]) : [`NSFontDescriptor] Objc.id))
  method fontDescriptorWithMatrix (matrix : [`NSAffineTransform] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontDescriptorWithMatrix:")
      [make_pointer_from_object matrix]) : [`NSFontDescriptor] Objc.id))
  method fontDescriptorWithFace (newFace : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontDescriptorWithFace:")
      [make_pointer_from_object newFace]) : [`NSFontDescriptor] Objc.id))
  method fontDescriptorWithFamily (newFamily : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontDescriptorWithFamily:")
      [make_pointer_from_object newFamily]) : [`NSFontDescriptor] Objc.id))
end
