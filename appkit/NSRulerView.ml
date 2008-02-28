(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSRulerView] id) -> object
  inherit Im_NSRulerView.methods
  method repr = r
end

(* Class object for NSRulerView *)
let c = Classes.find "NSRulerView"
let _new()= (Objc.objcnew c : [`NSRulerView] id)
let alloc() = (Objc.objcalloc c : [`NSRulerView] id)
let registerUnitWithName  ~abbreviation:(abbreviation : [`NSString] Objc.t ) ~unitToPointsConversionFactor:(conversionFactor : float ) ~stepUpCycle:(stepUpCycle : [`NSArray] Objc.t ) ~stepDownCycle:(stepDownCycle : [`NSArray] Objc.t ) (unitName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg unitName "registerUnitWithName" make_pointer_from_object
      ++ Objc.arg abbreviation "abbreviation" make_pointer_from_object
      ++ Objc.arg conversionFactor "unitToPointsConversionFactor" make_float
      ++ Objc.arg stepUpCycle "stepUpCycle" make_pointer_from_object
      ++ Objc.arg stepDownCycle "stepDownCycle" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
