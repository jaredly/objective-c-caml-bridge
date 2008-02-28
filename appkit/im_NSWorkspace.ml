(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSWorkspace *)
class virtual methods = object (self)
  method virtual repr : [`NSWorkspace] Objc.id
  method notificationCenter =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "notificationCenter")[])
       : [`NSNotificationCenter] Objc.id))
  (* skipping selector openFile *)
  (* skipping selector openFile:withApplication *)
  (* skipping selector openFile:withApplication:andDeactivate *)
  method openTempFile (fullPath : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "openTempFile:")
      [make_pointer_from_object fullPath]) : bool)
(*  UNSUPPORTED
  method openFile  ?fromImage:(anImage : [`NSImage] Objc.t option) ?at:(point : (*NSPoint*) unsupported option) ?inView:(aView : [`NSView] Objc.t option) (fullPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fullPath "openFile" make_pointer_from_object
      ++ Objc.opt_arg anImage "fromImage" make_pointer_from_object
      ++ Objc.opt_arg point "at" (*NSPoint*) unsupported
      ++ Objc.opt_arg aView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method openURL (url : [`NSURL] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "openURL:")
      [make_pointer_from_object url]) : bool)
  (* skipping selector launchApplication *)
  method launchApplication  ?showIcon:(showIcon : bool option) ?autolaunch:(autolaunch : bool option) (appName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg appName "launchApplication" make_pointer_from_object
      ++ Objc.opt_arg showIcon "showIcon" make_bool
      ++ Objc.opt_arg autolaunch "autolaunch" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method fullPathForApplication (appName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fullPathForApplication:")
      [make_pointer_from_object appName]) : [`NSString] Objc.id))
  method selectFile  ~inFileViewerRootedAtPath:(rootFullpath : [`NSString] Objc.t ) (fullPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fullPath "selectFile" make_pointer_from_object
      ++ Objc.arg rootFullpath "inFileViewerRootedAtPath" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method findApplications =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "findApplications")[])
       : unit)
  (* skipping selector noteFileSystemChanged *)
  method noteFileSystemChanged (path : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "noteFileSystemChanged:")
      [make_pointer_from_object path]) : unit)
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
  method getInfoForFile  ~application:(appName : (*pointer to pointer to NSString*) unsupported ) ~l_type:(_type : (*pointer to pointer to NSString*) unsupported ) (fullPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fullPath "getInfoForFile" make_pointer_from_object
      ++ Objc.arg appName "application" (*pointer to pointer to NSString*) unsupported
      ++ Objc.arg _type "l_type" (*pointer to pointer to NSString*) unsupported
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
  method setIcon  ~forFile:(fullPath : [`NSString] Objc.t ) ~options:(options : int ) (image : [`NSImage] Objc.t) =
    let sel, args = (
      Objc.arg image "setIcon" make_pointer_from_object
      ++ Objc.arg fullPath "forFile" make_pointer_from_object
      ++ Objc.arg options "options" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
(*  UNSUPPORTED
  method getFileSystemInfoForPath  ~isRemovable:(removableFlag : [`BOOL] Objc.t ) ~isWritable:(writableFlag : [`BOOL] Objc.t ) ~isUnmountable:(unmountableFlag : [`BOOL] Objc.t ) ~description:(description : (*pointer to pointer to NSString*) unsupported ) ~l_type:(fileSystemType : (*pointer to pointer to NSString*) unsupported ) (fullPath : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fullPath "getFileSystemInfoForPath" make_pointer_from_object
      ++ Objc.arg removableFlag "isRemovable" make_pointer_from_object
      ++ Objc.arg writableFlag "isWritable" make_pointer_from_object
      ++ Objc.arg unmountableFlag "isUnmountable" make_pointer_from_object
      ++ Objc.arg description "description" (*pointer to pointer to NSString*) unsupported
      ++ Objc.arg fileSystemType "l_type" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method performFileOperation  ~source:(source : [`NSString] Objc.t ) ~destination:(destination : [`NSString] Objc.t ) ~files:(files : [`NSArray] Objc.t ) ~tag:(tag : [`int] Objc.t ) (operation : [`NSString] Objc.t) =
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
(*  UNSUPPORTED
  method slideImage  ~from:(fromPoint : (*NSPoint*) unsupported ) ~l_to:(toPoint : (*NSPoint*) unsupported ) (image : [`NSImage] Objc.t) =
    let sel, args = (
      Objc.arg image "slideImage" make_pointer_from_object
      ++ Objc.arg fromPoint "from" (*NSPoint*) unsupported
      ++ Objc.arg toPoint "l_to" (*NSPoint*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
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
  method launchAppWithBundleIdentifier  ~options:(options : (*NSWorkspaceLaunchOptions*) unsupported ) ~additionalEventParamDescriptor:(descriptor : [`NSAppleEventDescriptor] Objc.t ) ~launchIdentifier:(identifier : (*pointer to pointer to NSNumber*) unsupported ) (bundleIdentifier : [`NSString] Objc.t) =
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
  method openURLs  ~withAppBundleIdentifier:(bundleIdentifier : [`NSString] Objc.t ) ~options:(options : (*NSWorkspaceLaunchOptions*) unsupported ) ~additionalEventParamDescriptor:(descriptor : [`NSAppleEventDescriptor] Objc.t ) ~launchIdentifiers:(identifiers : (*pointer to pointer to NSArray*) unsupported ) (urls : [`NSArray] Objc.t) =
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
