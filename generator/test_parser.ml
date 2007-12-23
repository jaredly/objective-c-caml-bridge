open Ast
open Parser

let files =
  ["/System/Library/Frameworks/Foundation.framework/Headers/NSURL.h"]

let rec filtered_stream lexer n =
  match Lexobjc.objc_dot_h lexer with
    | Lexobjc.EOF -> None
    | Lexobjc.Preproc s -> 
	Debug.f "Preproc: %s" s; 
	filtered_stream lexer (succ n)
    | Lexobjc.Import s -> 
	Debug.f "Import: %s" s; 
	filtered_stream lexer (succ n)
    | Lexobjc.Comment s -> 
	Debug.f "Comment: %s" s; 
	filtered_stream lexer (succ n)
    | t -> Some t

let from_string s =
  let lexer = Lexing.from_string s in
  let token_stream = Stream.from (filtered_stream lexer) in
    Parser.dot_h token_stream

let from_channel ic =
  let lexer = Lexing.from_channel ic in
  let token_stream = Stream.from (filtered_stream lexer) in
  Parser.dot_h token_stream


let parse_one f =
  Debug.f "Parsing: %s" f;
  try
    Utils.with_in_channel (open_in f) (fun ic -> ignore (from_channel ic))
  with
    | End_of_file -> ()


let () =
  List.iter (fun (p,s,v) ->
    assert (p (Stream.from (filtered_stream (Lexing.from_string s))) = v))
    [Parser_types.type_specifier, "long long", Qualified ("long", NamedType "long");
     Parser_types.type_specifier, "unsigned short", Qualified ("unsigned", NamedType "short");
     Parser_types.type_specifier, "unsigned long long" , Qualified ("unsigned", Qualified ("long", NamedType "long"));
     Parser_types.type_specifier, "NSString *", Pointer (false, NamedType "NSString");
     Parser_types.type_specifier, "NSString * const", Pointer (true, NamedType "NSString");
     Parser_types.type_specifier, "void **", Pointer (false, (Pointer (false, NamedType "void")));
     Parser_types.type_specifier, "int (*)(id, id, void *)", Fun ([NamedType "id"; NamedType "id"; Pointer (false, NamedType "void")], NamedType "int")
    ]

let _ =
  List.iter parse_one files
let _ =
  List.iter parse_one Tiger.foundation
