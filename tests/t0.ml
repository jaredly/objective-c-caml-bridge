open Objc
let my_new c =
  let c1 = Classes.find c in
  let o1 = Objc.objcnew c1 in
    Debug.f "[%s new] successful%!" c

let () = my_new "NSObject"
let () = try my_new "foo" with Not_found -> Debug.f "class foo not found"


let stringWithCString  ?length:(length : int option) (bytes : string) =
  let repr = Classes.find "NSString" in
  let sel, args = (
      Objc.arg bytes "stringWithCString" make_string
      ++ Objc.opt_arg length "length" make_int
    ) ([],[]) in
    (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.id)

let length repr =
  (get_int (Objc.invoke Objc.tag_int repr (Selector.find "length")[]) : int)


let () =
  Objc.debug_invoke true;
  let s = stringWithCString "foobar" in
    Debug.f "Created string object";
    assert (length s = 6)
