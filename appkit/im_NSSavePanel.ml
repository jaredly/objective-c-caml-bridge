(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSavePanel *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method url =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "URL")[])
       : [`NSURL] Objc.id))
  method filename =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "filename")[])
       : [`NSString] Objc.id))
  method directory =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "directory")[])
       : [`NSString] Objc.id))
  method setDirectory (path : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDirectory:")
      [make_pointer_from_object path]) : unit)
  method requiredFileType =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "requiredFileType")[])
       : [`NSString] Objc.id))
  method setRequiredFileType (_type : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRequiredFileType:")
      [make_pointer_from_object _type]) : unit)
  method allowedFileTypes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "allowedFileTypes")[])
       : [`NSArray] Objc.id))
  method setAllowedFileTypes (types : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowedFileTypes:")
      [make_pointer_from_object types]) : unit)
  method allowsOtherFileTypes =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsOtherFileTypes")[])
       : bool)
  method setAllowsOtherFileTypes (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsOtherFileTypes:")
      [make_bool flag]) : unit)
  method accessoryView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "accessoryView")[])
       : [`NSView] Objc.id))
  method setAccessoryView (view : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAccessoryView:")
      [make_pointer_from_object view]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method isExpanded =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isExpanded")[])
       : bool)
  method canCreateDirectories =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canCreateDirectories")[])
       : bool)
  method setCanCreateDirectories (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCanCreateDirectories:")
      [make_bool flag]) : unit)
  method canSelectHiddenExtension =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canSelectHiddenExtension")[])
       : bool)
  method setCanSelectHiddenExtension (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCanSelectHiddenExtension:")
      [make_bool flag]) : unit)
  method isExtensionHidden =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isExtensionHidden")[])
       : bool)
  method setExtensionHidden (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setExtensionHidden:")
      [make_bool flag]) : unit)
  method treatsFilePackagesAsDirectories =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "treatsFilePackagesAsDirectories")[])
       : bool)
  method setTreatsFilePackagesAsDirectories (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTreatsFilePackagesAsDirectories:")
      [make_bool flag]) : unit)
  method prompt =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "prompt")[])
       : [`NSString] Objc.id))
  method setPrompt (prompt : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPrompt:")
      [make_pointer_from_object prompt]) : unit)
  method title =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "title")[])
       : [`NSString] Objc.id))
  method setTitle (title : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitle:")
      [make_pointer_from_object title]) : unit)
  method nameFieldLabel =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nameFieldLabel")[])
       : [`NSString] Objc.id))
  method setNameFieldLabel (label : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNameFieldLabel:")
      [make_pointer_from_object label]) : unit)
  method message =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "message")[])
       : [`NSString] Objc.id))
  method setMessage (message : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMessage:")
      [make_pointer_from_object message]) : unit)
  method validateVisibleColumns =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "validateVisibleColumns")[])
       : unit)
  method selectText (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectText:")
      [make_pointer_from_object sender]) : unit)
end
