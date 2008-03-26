(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSRulerView.methods
end

class t = fun (r :[`NSRulerView] id) -> object
  inherit methods
  inherit NSView.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSRulerView *)
let c = Classes.find "NSRulerView"
let _new()= (Objc.objcnew c : [`NSRulerView] id)
let alloc() = (Objc.objcalloc c : [`NSRulerView] id)
let registerUnitWithName_abbreviation_unitToPointsConversionFactor_stepUpCycle_stepDownCycle  (unitName : [`NSString] Objc.t) (abbreviation : [`NSString] Objc.t) (conversionFactor : float) (stepUpCycle : [`NSArray] Objc.t) (stepDownCycle : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg unitName "registerUnitWithName" make_pointer_from_object
      ++ Objc.arg abbreviation "abbreviation" make_pointer_from_object
      ++ Objc.arg conversionFactor "unitToPointsConversionFactor" make_float
      ++ Objc.arg stepUpCycle "stepUpCycle" make_pointer_from_object
      ++ Objc.arg stepDownCycle "stepDownCycle" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
