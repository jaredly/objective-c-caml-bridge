(** Hardcoded decisions and one-off uglies *)
open Utils
open Ast

(* method names that aren't compatible with OCaml syntax *)
let rename_method = function
  | "AMSymbol" -> "getAMSymbol"
  | "PMSymbol" -> "getPMSymbol"
  | "function" -> "getfunction"
  | "TXTRecordData" -> "getTXTRecordData"
  | "new" -> "new_"
  | "class" -> "class_"
  | "open" -> "open_"
  | "XPath" -> "xpath"
  | s when String.length s >= 3 && String.sub s 0 3 = "URL" ->
      "url" ^ String.sub s 3  (String.length s - 3)
  | s when String.length s >= 3 && String.sub s 0 3 = "URI" ->
      "uri" ^ String.sub s 3  (String.length s - 3)
  | s when String.length s >= 3 && String.sub s 0 3 = "ISO" ->
      "iso" ^ String.sub s 3  (String.length s - 3)
  | s when String.length s >= 3 && String.sub s 0 3 = "UTF" ->
      "utf" ^ String.sub s 3  (String.length s - 3)
  | s when String.length s >= 3 && String.sub s 0 3 = "DTD" ->
      "dtd" ^ String.sub s 3  (String.length s - 3)
  | s when String.length s >= 3 && String.sub s 0 3 = "XML" ->
      "xml" ^ String.sub s 3  (String.length s - 3)
  | s when String.length s >= 4 && String.sub s 0 4 = "MIME" ->
      "mime" ^ String.sub s 4  (String.length s - 4)
  | s when String.length s >= 4 && String.sub s 0 4 = "HTTP" ->
      "http" ^ String.sub s 4  (String.length s - 4)
  | s -> s

(* Globally maintained set of declared enum typedefs 
 * If we see the tyoe later we'll map it to int64
 *)
let enums = ref StringSet.empty
let add_enum e = enums := StringSet.add e !enums

(* Most of this should eventually come from recursive includes *)
let type_synonym = function
  | NamedType "NSComparisonResult" -> NamedType "int"
  | NamedType "Boolean" -> NamedType "BOOL"
  | NamedType "OSType" -> NamedType "int64" (* 4-char codes - needs Int64 *)
  | NamedType "SInt32" | NamedType "int32_t" | NamedType "UInt32" -> NamedType "int64" (* guessing *)
  | NamedType "int64_t" -> NamedType "int64" (* guessing *)
  | NamedType "AEEventID" | NamedType "AEEventClass" | NamedType "AETransactionID" 
  | NamedType "AEKeyword" | NamedType "AEReturnID" -> NamedType "int64"
  | NamedType "Class" -> NamedType "id" (*?*)
  | NamedType "NSTimeInterval" -> NamedType "double"
  | NamedType "NSStringEncoding" -> NamedType "int64" (* unsigned, really *)
  | NamedType s when StringSet.mem s !enums -> NamedType "int"
  | Pointer (_, NamedType "char") -> NamedType "string"
  | Pointer (_, Qualified ("const", NamedType "char")) -> NamedType "string"
  | t -> t

(* sanitize idents that collide with OCaml keywords *)
let safe_prefix p = function
  | "object" -> p ^ "object"
  | "method" -> p ^ "method"
  | "type" -> p ^ "type"
  | "exception" -> p ^ "exception"
  | "sig" -> p ^ "sig"
  | "to" -> p ^ "to"
  | "in" -> p ^ "in"
  | "end" -> p ^ "end"
  | "with" -> p ^ "with"
  | "parser" -> p ^ "parser"
  | "val" -> p ^ "val"
  | "" -> ""
  | s when s.[0] >= 'A' && s.[0] <= 'Z' -> p ^ s 
  | s -> s

let safe_ident = safe_prefix "_"
(* TBD: selector mapping needs to be updated for this *)
let safe_selector = safe_prefix "l_"

(* one-offs: some methods can't be compiled due to 
 * weaknesses in our approch to methods/arg naming
 * Instead of writing lots of code (which is hard
 * anyway due to ObjC categories distributed over
 * many files), we just opt out to compile some 
 * specific methods.
 * Ugly, yes, ok.
 *)

module DescSet = Set.Make(struct type t = string * string list let compare = compare end)
let optout_methods =
  List.fold_right DescSet.add [
      ("NSArchiver", ["encodeConditionalObject"]);
      ("NSDistantObjectRequest", ["connection"]);
      ("NSDistributedNotificationCenter", ["addObserver";"selector";"name";"l_object";"suspensionBehavior"]);
      ("NSDistributedNotificationCenter", ["removeObserver";"name";"l_object"]);
      ("NSDistributedNotificationCenter", ["postNotificationName"; "l_object"; "userInfo"; "deliverImmediately"]);
      ("NSCountedSet", ["initWithSet"]);
      ("NSSocketPortNameServer", ["portForName";"host";"nameServerPortNumber"]);
      ("NSSocketPortNameServer", ["registerPort"; "name"; "nameServerPortNumber"]);
      ("NSIndexSpecifier", ["initWithContainerClassDescription";"containerSpecifier";"key";"index"]);
      ("NSNameSpecifier", ["initWithContainerClassDescription";"containerSpecifier";"key";"name"]);
      ("NSRangeSpecifier", ["initWithContainerClassDescription"; "containerSpecifier"; "key"; "startSpecifier"; "endSpecifier"]);
      ("NSRelativeSpecifier", ["initWithContainerClassDescription"; "containerSpecifier"; "key"; "relativePosition"; "baseSpecifier"]);
      ("NSUniqueIDSpecifier", ["initWithContainerClassDescription"; "containerSpecifier"; "key"; "uniqueID"]);
      ("NSWhoseSpecifier", ["initWithContainerClassDescription"; "containerSpecifier"; "key"; "test"]);
      ("NSText", ["copy"]);
      ("NSMovieView", ["copy"]);
      ("NSOpenPanel", ["beginSheetForDirectory";"file";"types";"modalForWindow";"modalDelegate";"didEndSelector";"contextInfo"]);
      ("NSOpenPanel", ["runModalForDirectory"; "file"; "types"]);
      ("NSControl", ["setNeedsDisplay"]);
      ("NSPersistentDocument", ["writeToURL"; "ofType"; "forSaveOperation"; "originalContentsURL"; "error"]);
      ("NSPersistentDocument", ["readFromURL"; "ofType"; "error"]);
      ("NSBrowser", ["sendAction"]);
      ("NSMatrix", ["sendAction"; "l_to"; "forAllCells"]);
      ("NSMatrix", ["setToolTip"; "forCell"]);
      ("NSPopUpButtonCell", ["initTextCell"; "pullsDown"]);
      ("NSScroller", ["setFloatValue"; "knobProportion"]);
      ("NSSegmentedCell", ["setImage"; "forSegment"]);
      ("NSSegmentedCell", ["setEnabled"; "forSegment"]);
      ("NSSegmentedCell", ["setMenu"; "forSegment"]);
      ("NSSegmentedCell", ["setTag"; "forSegment"]);
      ("NSSegmentedControl", ["setMenu"; "forSegment"]);
      ("NSSegmentedControl", ["setEnabled"; "forSegment"]);
      ("NSTextView", ["setSelectedRange"; "affinity"; "stillSelecting"]);
      ("NSTextView", ["setAlignment"; "range"]);
      ("NSTextView", ["setBaseWritingDirection"; "range"]);
      ("NSToolbarItem", ["toolbar"]); 
      (* broken inheritance overrides *)
      ("NSScriptCoercionHandler", ["coerceValue"; "toClass"]);
      ("NSRunLoop", ["performSelector"; "target"; "argument"; "order"; "modes"]);
      ("NSObject", ["l_URL"; "resourceDataDidBecomeAvailable"]);
      ("NSSet", ["setValue"; "forKey"]);
      ("NSNotificationCenter", ["removeObserver"; "name"; "l_object"]);
    ] DescSet.empty


let optout x = DescSet.mem x optout_methods
