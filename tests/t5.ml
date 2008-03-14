#directory "support";;
#directory "foundation";;
let () = Objc.debug_invoke true
;;
let f= NSNumber.numberWithFloat 0.0
and i = NSNumber.numberWithInt 42
and b = NSNumber.numberWithBool true
;;

assert (i#intValue = 42);;
assert (f#floatValue = 0.0);;
assert (b#boolValue);;

let x = b#intValue;;
let y  = b#floatValue;;
let z = b#objCType;;
