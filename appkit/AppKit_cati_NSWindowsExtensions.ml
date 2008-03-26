(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSWindowsExtensions of NSImage *)
class virtual methods_NSImage = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithIconHandle (icon : [`void] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithIconHandle:")
      [make_pointer_from_object icon]) : [`NSObject] Objc.id)
  method initWithBitmapHandle (bitmap : [`void] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithBitmapHandle:")
      [make_pointer_from_object bitmap]) : [`NSObject] Objc.id)
end
(* instance methods for category NSWindowsExtensions of NSApplication *)
class virtual methods_NSApplication = object (self)
  method virtual repr : [`NSObject] Objc.id
  method applicationHandle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "applicationHandle")[])
       : [`void] Objc.id))
  method windowWithWindowHandle (hWnd : [`void] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowWithWindowHandle:")
      [make_pointer_from_object hWnd]) : [`NSWindow] Objc.id))
end
(* instance methods for category NSWindowsExtensions of NSWindow *)
class virtual methods_NSWindow = object (self)
  method virtual repr : [`NSObject] Objc.id
  method windowHandle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowHandle")[])
       : [`void] Objc.id))
end
(* instance methods for category NSWindowsExtensions of NSBitmapImageRep *)
class virtual methods_NSBitmapImageRep = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithIconHandle (icon : [`void] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithIconHandle:")
      [make_pointer_from_object icon]) : [`NSObject] Objc.id)
  method initWithBitmapHandle (bitmap : [`void] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithBitmapHandle:")
      [make_pointer_from_object bitmap]) : [`NSObject] Objc.id)
end
