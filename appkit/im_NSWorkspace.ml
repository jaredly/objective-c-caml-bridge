(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSWorkspace *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method notificationCenter =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "notificationCenter")[])
       : [`NSNotificationCenter] Objc.id))
  method openFile (fullPath : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "openFile:")
      [make_pointer_from_object fullPath]) : bool)
  method openFile_withApplication  (fullPath : [`NSString] Objc.t) (appName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fullPath "openFile" make_pointer_from_object
      ++ Objc.arg appName "withApplication" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method openFile_withApplication_andDeactivate  (fullPath : [`NSString] Objc.t) (appName : [`NSString] Objc.t) (flag : bool) =
    let sel, args = (
      Objc.arg fullPath "openFile" make_pointer_from_object
      ++ Objc.arg appName "withApplication" make_pointer_from_object
      ++ Objc.arg flag "andDeactivate" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method openTempFile (fullPath : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "openTempFile:")
      [make_pointer_from_object fullPath]) : bool)
  method openFile_fromImage_at_inView  (fullPath : [`NSString] Objc.t) (anImage : [`NSImage] Objc.t) (point : NSPoint.t) (aView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg fullPath "openFile" make_pointer_from_object
      ++ Objc.arg anImage "fromImage" make_pointer_from_object
      ++ Objc.arg point "at" make_point
      ++ Objc.arg aView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method openURL (url : [`NSURL] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "openURL:")
      [make_pointer_from_object url]) : bool)
  method launchApplication (appName : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "launchApplication:")
      [make_pointer_from_object appName]) : bool)
  method launchApplication_showIcon_autolaunch  (appName : [`NSString] Objc.t) (showIcon : bool) (autolaunch : bool) =
    let sel, args = (
      Objc.arg appName "launchApplication" make_pointer_from_object
      ++ Objc.arg showIcon "showIcon" make_bool
      ++ Objc.arg autolaunch "autolaunch" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method fullPathForApplication (appName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fullPathForApplication:")
      [make_pointer_from_object appName]) : [`NSString] Objc.id))
  method selectFile_inFileViewerRootedAtPath  (fullPath : [`NSString] Objc.t) (rootFullpath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fullPath "selectFile" make_pointer_from_object
      ++ Objc.arg rootFullpath "inFileViewerRootedAtPath" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method findApplications =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "findApplications")[])
       : unit)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method noteFileSystemChanged =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "noteFileSystemChanged")[])
       : unit)

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method noteFileSystemChanged (path : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "noteFileSystemChanged:")
      [make_pointer_from_object path]) : unit)

*)
  method fileSystemChanged =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "fileSystemChanged")[])
       : bool)
  method noteUserDefaultsChanged =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "noteUserDefaultsChanged")[])
       : unit)
  method userDefaultsChanged =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "userDefaultsChanged")[])
       : bool)
(*  UNSUPPORTED
  method getInfoForFile_application_type  (fullPath : [`NSString] Objc.t) (appName : (*pointer to pointer to NSString*) unsupported) (_type : (*pointer to pointer to NSString*) unsupported) =
    let sel, args = (
      Objc.arg fullPath "getInfoForFile" make_pointer_from_object
      ++ Objc.arg appName "application" (*pointer to pointer to NSString*) unsupported
      ++ Objc.arg _type "type" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method isFilePackageAtPath (fullPath : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFilePackageAtPath:")
      [make_pointer_from_object fullPath]) : bool)
  method iconForFile (fullPath : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "iconForFile:")
      [make_pointer_from_object fullPath]) : [`NSImage] Objc.id))
  method iconForFiles (fullPaths : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "iconForFiles:")
      [make_pointer_from_object fullPaths]) : [`NSImage] Objc.id))
  method iconForFileType (fileType : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "iconForFileType:")
      [make_pointer_from_object fileType]) : [`NSImage] Objc.id))
  method setIcon_forFile_options  (image : [`NSImage] Objc.t) (fullPath : [`NSString] Objc.t) (options : int) =
    let sel, args = (
      Objc.arg image "setIcon" make_pointer_from_object
      ++ Objc.arg fullPath "forFile" make_pointer_from_object
      ++ Objc.arg options "options" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
(*  UNSUPPORTED
  method getFileSystemInfoForPath_isRemovable_isWritable_isUnmountable_description_type  (fullPath : [`NSString] Objc.t) (removableFlag : [`BOOL] Objc.t) (writableFlag : [`BOOL] Objc.t) (unmountableFlag : [`BOOL] Objc.t) (description : (*pointer to pointer to NSString*) unsupported) (fileSystemType : (*pointer to pointer to NSString*) unsupported) =
    let sel, args = (
      Objc.arg fullPath "getFileSystemInfoForPath" make_pointer_from_object
      ++ Objc.arg removableFlag "isRemovable" make_pointer_from_object
      ++ Objc.arg writableFlag "isWritable" make_pointer_from_object
      ++ Objc.arg unmountableFlag "isUnmountable" make_pointer_from_object
      ++ Objc.arg description "description" (*pointer to pointer to NSString*) unsupported
      ++ Objc.arg fileSystemType "type" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method performFileOperation_source_destination_files_tag  (operation : [`NSString] Objc.t) (source : [`NSString] Objc.t) (destination : [`NSString] Objc.t) (files : [`NSArray] Objc.t) (tag : [`int] Objc.t) =
    let sel, args = (
      Objc.arg operation "performFileOperation" make_pointer_from_object
      ++ Objc.arg source "source" make_pointer_from_object
      ++ Objc.arg destination "destination" make_pointer_from_object
      ++ Objc.arg files "files" make_pointer_from_object
      ++ Objc.arg tag "tag" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method unmountAndEjectDeviceAtPath (path : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "unmountAndEjectDeviceAtPath:")
      [make_pointer_from_object path]) : bool)
  method extendPowerOffBy (requested : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "extendPowerOffBy:")
      [make_int requested]) : int)
  method slideImage_from_to  (image : [`NSImage] Objc.t) (fromPoint : NSPoint.t) (toPoint : NSPoint.t) =
    let sel, args = (
      Objc.arg image "slideImage" make_pointer_from_object
      ++ Objc.arg fromPoint "from" make_point
      ++ Objc.arg toPoint "to" make_point
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method hideOtherApplications =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "hideOtherApplications")[])
       : unit)
  method mountedLocalVolumePaths =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mountedLocalVolumePaths")[])
       : [`NSArray] Objc.id))
  method mountedRemovableMedia =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mountedRemovableMedia")[])
       : [`NSArray] Objc.id))
  method mountNewRemovableMedia =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mountNewRemovableMedia")[])
       : [`NSArray] Objc.id))
  method checkForRemovableMedia =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "checkForRemovableMedia")[])
       : unit)
  method absolutePathForAppBundleWithIdentifier (bundleIdentifier : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "absolutePathForAppBundleWithIdentifier:")
      [make_pointer_from_object bundleIdentifier]) : [`NSString] Objc.id))
(*  UNSUPPORTED
  method launchAppWithBundleIdentifier_options_additionalEventParamDescriptor_launchIdentifier  (bundleIdentifier : [`NSString] Objc.t) (options : (*NSWorkspaceLaunchOptions*) unsupported) (descriptor : [`NSAppleEventDescriptor] Objc.t) (identifier : (*pointer to pointer to NSNumber*) unsupported) =
    let sel, args = (
      Objc.arg bundleIdentifier "launchAppWithBundleIdentifier" make_pointer_from_object
      ++ Objc.arg options "options" (*NSWorkspaceLaunchOptions*) unsupported
      ++ Objc.arg descriptor "additionalEventParamDescriptor" make_pointer_from_object
      ++ Objc.arg identifier "launchIdentifier" (*pointer to pointer to NSNumber*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
(*  UNSUPPORTED
  method openURLs_withAppBundleIdentifier_options_additionalEventParamDescriptor_launchIdentifiers  (urls : [`NSArray] Objc.t) (bundleIdentifier : [`NSString] Objc.t) (options : (*NSWorkspaceLaunchOptions*) unsupported) (descriptor : [`NSAppleEventDescriptor] Objc.t) (identifiers : (*pointer to pointer to NSArray*) unsupported) =
    let sel, args = (
      Objc.arg urls "openURLs" make_pointer_from_object
      ++ Objc.arg bundleIdentifier "withAppBundleIdentifier" make_pointer_from_object
      ++ Objc.arg options "options" (*NSWorkspaceLaunchOptions*) unsupported
      ++ Objc.arg descriptor "additionalEventParamDescriptor" make_pointer_from_object
      ++ Objc.arg identifiers "launchIdentifiers" (*pointer to pointer to NSArray*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method launchedApplications =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "launchedApplications")[])
       : [`NSArray] Objc.id))
  method activeApplication =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "activeApplication")[])
       : [`NSDictionary] Objc.id))
end
