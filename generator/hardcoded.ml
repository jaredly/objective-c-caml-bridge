(* method names *)
open Utils
open Ast

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

let enums = ref StringSet.empty
let add_enum e = enums := StringSet.add e !enums
(* Most of this should eventually come from recursive includes *)
let type_synonym = function
  | NamedType "NSComparisonResult" -> NamedType "int"
  | NamedType "Boolean" -> NamedType "BOOL"
  | NamedType "OSType" -> NamedType "int" (* 4-char codes - needs Int64 *)
  | NamedType "SInt32" | NamedType "int32_t" -> NamedType "int64" (* guessing *)
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

(* sanitize some OCaml keywords *)
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
