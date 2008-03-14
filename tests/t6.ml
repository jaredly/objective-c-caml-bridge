#directory "support";;
#directory "foundation";;
let () = Objc.debug_invoke true
;;
let c = NSConnection._new()
;;
let v = Kvc.get c "busy"
;;
let vv = new NSValue.t v
;;
let t = vv#objCType
;;

