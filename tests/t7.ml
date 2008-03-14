open Printf;;
#directory "support";;
#directory "foundation";;
#directory "appkit";;
let l = new NSArray.t (NSScreen.screens()) ;;
let () = 
  for i = 0 to l#count - 1 do
    let s = new NSScreen.t (Objc.cast (l#objectAtIndex i)) in
    let (x,y),(w,h) = s#frame 
    and d = s#depth 
    in
      printf "x=%f y=%f w=%f h=%f d=%d\n" x y w h d
  done
;;
