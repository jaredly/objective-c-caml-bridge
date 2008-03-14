(** Hardcoded decisions and one-off uglies *)
open Utils
open Ast

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
  | s -> safe_prefix "_" s

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
  | NamedType "NSWindowDepth" -> NamedType "int" (* NSGraphics.h *)
  | NamedType s when StringSet.mem s !enums -> NamedType "int"
  | Pointer (_, NamedType "char") -> NamedType "string"
  | Pointer (_, Qualified ("const", NamedType "char")) -> NamedType "string"
  | t -> t

(* TBD: selector mapping needs to be updated for this *)
let safe_selector x = x (* safe_prefix "l_" *)

(* one-offs: some methods can't be compiled due to 
 * weaknesses in our approch to methods/arg naming
 * Instead of writing lots of code (which is hard
 * anyway due to ObjC categories distributed over
 * many files), we just opt out to compile some 
 * specific interfaces or methods.
 * Ugly, yes, ok.
 *)

let optout_interfaces = 
  List.fold_right StringSet.add [
      "NSNumberFormatterCompatibility";
      "NSDeprecated";
    ] StringSet.empty
let optout_interface x =
  StringSet.mem x optout_interfaces
  
module DescSet = Set.Make(struct type t = string * string list let compare = compare end)
let optout_methods =
  List.fold_right DescSet.add [
      "NSWorkspace", ["noteFileSystemChanged"]; (* 2 conflicting versions *)
      "NSDrawer", ["open"]; (* 2 conflicting versions *)
      "NSDrawer", ["close"]; (* 2 conflicting versions *)
      "NSControl", ["setNeedsDisplay"];
      "NSSliderCell", ["drawKnob"];
      "NSFormCell", ["titleWidth"];
    ] DescSet.empty

let optout_method x = DescSet.mem x optout_methods
