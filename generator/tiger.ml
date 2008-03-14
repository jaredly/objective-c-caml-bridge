let foundation_directory = "/System/Library/Frameworks/Foundation.framework/Headers"
let foundation =
  List.map (Filename.concat foundation_directory ) [
(* "Foundation.h"; *)
(* "FoundationErrors.h"; *)
"NSAffineTransform.h";
"NSAppleEventDescriptor.h";
"NSAppleEventManager.h";
"NSAppleScript.h";
"NSArchiver.h";
"NSArray.h";
"NSAttributedString.h";
"NSAutoreleasePool.h";
"NSBundle.h";
(* "NSByteOrder.h"; enum and inlines only *)
"NSCalendar.h";
"NSCalendarDate.h";
"NSCharacterSet.h";
"NSClassDescription.h";
"NSCoder.h";
"NSComparisonPredicate.h";
(* "NSCompatibility.h"; empty and obsolete *)
"NSCompoundPredicate.h";
"NSConnection.h";
"NSData.h";
"NSDate.h";
"NSDateFormatter.h";
"NSDebug.h"; 
"NSDecimal.h";
"NSDecimalNumber.h";
"NSDictionary.h";
"NSDistantObject.h";
"NSDistributedLock.h";
"NSDistributedNotificationCenter.h";
"NSEnumerator.h";
"NSError.h";
"NSException.h";
"NSExpression.h";
"NSFileHandle.h";
"NSFileManager.h";
"NSFormatter.h";
"NSGeometry.h";
"NSHFSFileTypes.h";
"NSHTTPCookie.h";
"NSHTTPCookieStorage.h";
"NSHashTable.h";
"NSHost.h";
"NSIndexPath.h";
(* "NSIndexSet.h"; TBD, has struct & other stuff in protected *)
(* "NSInvocation.h"; not sure this makes sense to parse since we have invoke *)
(* "NSJavaSetup.h"; nothing useful *)
"NSKeyValueCoding.h";
"NSKeyValueObserving.h";
"NSKeyedArchiver.h";
"NSLocale.h";
"NSLock.h";
"NSMapTable.h";
"NSMetadata.h";
"NSMethodSignature.h";
"NSNetServices.h";
"NSNotification.h";
"NSNotificationQueue.h";
"NSNull.h";
"NSNumberFormatter.h";
"NSObjCRuntime.h";
"NSObject.h";
"NSObjectScripting.h";
"NSPathUtilities.h";
"NSPort.h";
"NSPortCoder.h";
"NSPortMessage.h";
"NSPortNameServer.h";
"NSPredicate.h";
"NSProcessInfo.h";
"NSPropertyList.h";
"NSProtocolChecker.h";
"NSProxy.h";
"NSRange.h"; (* compile for NSValueRangeExtensions category *)
"NSRunLoop.h";
"NSScanner.h";
"NSScriptClassDescription.h";
"NSScriptCoercionHandler.h";
"NSScriptCommand.h";
"NSScriptCommandDescription.h";
"NSScriptExecutionContext.h";
"NSScriptKeyValueCoding.h";
"NSScriptObjectSpecifiers.h";
"NSScriptStandardSuiteCommands.h";
"NSScriptSuiteRegistry.h";
"NSScriptWhoseTests.h";
(* "NSSerialization.h"; obsolete in 10.2 *)
"NSSet.h";
"NSSortDescriptor.h";
"NSSpellServer.h";
"NSStream.h";
"NSString.h";
"NSTask.h";
"NSThread.h";
"NSTimeZone.h";
"NSTimer.h";
"NSURL.h";
"NSURLAuthenticationChallenge.h";
"NSURLCache.h";
"NSURLConnection.h";
"NSURLCredential.h";
"NSURLCredentialStorage.h";
"NSURLDownload.h";
"NSURLError.h";
"NSURLHandle.h";
"NSURLProtectionSpace.h";
"NSURLProtocol.h";
"NSURLRequest.h";
"NSURLResponse.h";
"NSUndoManager.h";
"NSUserDefaults.h";
(* "NSUtilities.h"; placeholder *)
"NSValue.h";
"NSValueTransformer.h";
"NSXMLDTD.h";
"NSXMLDTDNode.h";
"NSXMLDocument.h";
"NSXMLElement.h";
"NSXMLNode.h";
"NSXMLNodeOptions.h";
"NSXMLParser.h";
"NSZone.h"; (* not much to parse, but needed by NSObject *)
    ]

let appkit_directory = "/System/Library/Frameworks/AppKit.framework/Headers"
let appkit =
  List.map (Filename.concat appkit_directory ) [
(*      "AppKit.h"; *)
      "AppKitDefines.h";
      "AppKitErrors.h";
(*      "NSATSTypesetter.h"; requires NSTypeSetter.h *)
      "NSAccessibility.h";
      "NSActionCell.h";
(*      "NSAffineTransform.h"; naming issue - already in Foundation *)
      "NSAlert.h";
      "NSAnimation.h";
      "NSAppleScriptExtensions.h";
      "NSApplication.h";
      "NSApplicationScripting.h";
(*      "NSArrayController.h"; requires NSObjectController.h *)
(*      "NSAttributedString.h"; naming issue - already in Foundation *)
      "NSBezierPath.h";
      "NSBitmapImageRep.h";
      "NSBox.h";
      "NSBrowser.h";
      "NSBrowserCell.h";
      "NSButton.h";
      "NSButtonCell.h";
      "NSCIImageRep.h";
      "NSCachedImageRep.h";
      "NSCell.h";
      "NSClipView.h";
      "NSColor.h";
      "NSColorList.h";
      "NSColorPanel.h";
      "NSColorPicker.h";
      "NSColorPicking.h";
      "NSColorSpace.h";
      "NSColorWell.h";
      "NSComboBox.h";
      "NSComboBoxCell.h";
      "NSControl.h";
      "NSController.h";
      "NSCursor.h";
      "NSCustomImageRep.h";
      "NSDatePicker.h";
      "NSDatePickerCell.h";
      "NSDocument.h";
      "NSDocumentController.h";
      "NSDocumentScripting.h";
      "NSDragging.h";
      "NSDrawer.h";
      "NSEPSImageRep.h";
      "NSErrors.h";
      "NSEvent.h";
      "NSFileWrapper.h";
      "NSFont.h";
      "NSFontDescriptor.h";
      "NSFontManager.h";
      "NSFontPanel.h";
      "NSForm.h";
      "NSFormCell.h";
      "NSGlyphGenerator.h";
      "NSGlyphInfo.h";
      "NSGraphics.h";
      "NSGraphicsContext.h";
      "NSHelpManager.h";
      "NSImage.h";
      "NSImageCell.h";
      "NSImageRep.h";
      "NSImageView.h";
      "NSInputManager.h";
      "NSInputServer.h";
      "NSInterfaceStyle.h";
      "NSKeyValueBinding.h";
(*      "NSLayoutManager.h"; can't parse this without a true preprocessor *)
      "NSLevelIndicator.h";
      "NSLevelIndicatorCell.h";
      "NSMatrix.h";
      "NSMenu.h";
      "NSMenuItem.h";
      "NSMenuItemCell.h";
      "NSMenuView.h";
      "NSMovie.h";
      "NSMovieView.h";
      "NSNib.h";
      "NSNibConnector.h";
      "NSNibControlConnector.h";
      "NSNibDeclarations.h";
      "NSNibLoading.h";
      "NSNibOutletConnector.h";
(*      "NSObjectController.h";  requires CoreData/NSFetchRequest *)
      "NSOpenGL.h";
      "NSOpenGLView.h";
      "NSOpenPanel.h";
      "NSOutlineView.h";
      "NSPDFImageRep.h";
      "NSPICTImageRep.h";
(*      "NSPageLayout.h"; #ifdef gives 2 definitions of it *)
      "NSPanel.h";
      "NSParagraphStyle.h";
      "NSPasteboard.h";
      "NSPersistentDocument.h";
      "NSPopUpButton.h";
      "NSPopUpButtonCell.h";
      "NSPrintInfo.h";
      "NSPrintOperation.h";
      "NSPrintPanel.h";
      "NSPrinter.h";
      "NSProgressIndicator.h";
      "NSQuickDrawView.h";
      "NSResponder.h";
      "NSRulerMarker.h";
      "NSRulerView.h";
      "NSSavePanel.h";
      "NSScreen.h";
      "NSScrollView.h";
      "NSScroller.h";
      "NSSearchField.h";
      "NSSearchFieldCell.h";
      "NSSecureTextField.h";
      "NSSegmentedCell.h";
      "NSSegmentedControl.h";
      "NSShadow.h";
(*      "NSSimpleHorizontalTypesetter.h"; recursive depend w/ NSTypeSetter.h *)
      "NSSlider.h";
      "NSSliderCell.h";
      "NSSound.h";
      "NSSpeechRecognizer.h";
      "NSSpeechSynthesizer.h";
      "NSSpellChecker.h";
      "NSSpellProtocol.h";
(*      "NSSpellServer.h"; now in  Foundation *)
      "NSSplitView.h";
      "NSStatusBar.h";
      "NSStatusItem.h";
      "NSStepper.h";
      "NSStepperCell.h";
      "NSStringDrawing.h";
      "NSTabView.h";
      "NSTabViewItem.h";
      "NSTableColumn.h";
      "NSTableHeaderCell.h";
      "NSTableHeaderView.h";
      "NSTableView.h";
      "NSText.h";
      "NSTextAttachment.h";
      "NSTextContainer.h";
      "NSTextField.h";
      "NSTextFieldCell.h";
      "NSTextList.h";
      "NSTextStorage.h";
      "NSTextStorageScripting.h";
      "NSTextTable.h";
      "NSTextView.h";
      "NSTokenField.h";
      "NSTokenFieldCell.h";
      "NSToolbar.h";
      "NSToolbarItem.h";
(*      "NSTreeController.h"; requires NSObjectController.h *)
(*      "NSTypesetter.h"; see NSSimpleHorizontalTypesetter *)
      "NSUserDefaultsController.h";
      "NSUserInterfaceValidation.h";
      "NSView.h";
      "NSWindow.h";
      "NSWindowController.h";
      "NSWindowScripting.h";
      "NSWorkspace.h";
    ]
