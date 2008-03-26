(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSParagraphSeparatorCharacter = 8233L
let _NSLineSeparatorCharacter = 8232L
let _NSTabCharacter = 9L
let _NSFormFeedCharacter = 12L
let _NSNewlineCharacter = 10L
let _NSCarriageReturnCharacter = 13L
let _NSEnterCharacter = 3L
let _NSBackspaceCharacter = 8L
let _NSBackTabCharacter = 25L
let _NSDeleteCharacter = 127L
let _NSIllegalTextMovement = 0L
let _NSReturnTextMovement = 16L
let _NSTabTextMovement = 17L
let _NSBacktabTextMovement = 18L
let _NSLeftTextMovement = 19L
let _NSRightTextMovement = 20L
let _NSUpTextMovement = 21L
let _NSDownTextMovement = 22L
let _NSCancelTextMovement = 23L
let _NSOtherTextMovement = 0L


class virtual methods = object
  inherit Im_NSText.methods
end

class t = fun (r :[`NSText] id) -> object
  inherit methods
  inherit NSView.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSText *)
let c = Classes.find "NSText"
let _new()= (Objc.objcnew c : [`NSText] id)
let alloc() = (Objc.objcalloc c : [`NSText] id)
