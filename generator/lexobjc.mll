{
open Printf
type token =
    | Keyword of string
    | Ident of string
    | Number of int64
    | Char of char
    | Import of string
    | Preproc of string
    | Comment of string
    | EOF

let print_token w = function
  | Keyword s -> kprintf w "Keyword: %s\n" s
  | Ident s -> kprintf w "Ident: %s\n" s
  | Number d -> kprintf w "Number: %Ld\n" d
  | Char c -> kprintf w "Char: %c\n" c
  | Import s -> kprintf w "Import: %s\n" s
  | Preproc s -> kprintf w "Preproc: %s\n" s
  | Comment s -> kprintf w "Comment: %s\n" s
  | EOF -> kprintf w "EOF"
}

let hex_token =
  '0' ['x' 'X'] ['0'-'9' 'A'-'F' 'a'-'f']['0'-'9' 'A'-'F' 'a'-'f']* 'U'?

rule objc_dot_h = parse
  | "@interface" { Keyword "@interface" }
  | "@class" { Keyword "@class" }
  | "@end" {Keyword "@end" }
  | "@protocol" { Keyword "@protocol" }
  | "@private" { Keyword "@private" }
  | "@public" { Keyword "@public" }
  | "@protected" { Keyword "@protected" }
  | "enum" { Keyword "enum" }
  | "typedef" { Keyword "typedef" }
  | "struct" { Keyword "struct" }
  | "union" { Keyword "union" }
  | "IBOutlet" { objc_dot_h lexbuf }  (* empty define in Cocoa, used by IB *)
  | "<<" { Keyword "<<" }
  | '|' { Keyword "|" }
  | '<' { Keyword "<" }
  | '>' { Keyword ">" }
  | '{' { Keyword "{" }
  | '}' { Keyword "}" }
  | '(' { Keyword "(" }
  | ')' { Keyword ")" }
  | '[' { Keyword "[" }
  | ']' { Keyword "]" }
  | '+' { Keyword "+" }
  | '-' { Keyword "-" }
  | ':' { Keyword ":" }
  | ',' { Keyword "," }
  | ';' { Keyword ";" }
  | '*' { Keyword "*" }
  | '/' { Keyword "/" }
  | '=' { Keyword "=" }
  | "==" { Keyword "==" }
  | "&&" { Keyword "&&" }
  | '.' { Keyword "." }
  | "..." { Keyword "..." }
  | '\n' [' ' '\t']* "#import" { import lexbuf }
  | '\n' [' ' '\t']* '#' [ 'a'-'z' ]* { 
	let l = Lexing.lexeme lexbuf in
	  match preproc lexbuf with
	    | Preproc s -> 
		let _ = Preproc (l^s) in (* TBD *)
		  objc_dot_h lexbuf
	    | _ -> assert false
      }
  | "//" [^ '\n']* { Comment (Lexing.lexeme lexbuf) }
  | "/*" { comment lexbuf } 
  | ['A'-'Z' 'a'-'z' '_']['0' - '9' 'A'-'Z' 'a'-'z' '_']* 
      { Ident (Lexing.lexeme lexbuf) }
  | ['0'-'9']+ { Number (Int64.of_string (Lexing.lexeme lexbuf)) }
  | hex_token { 
	let s = Lexing.lexeme lexbuf in
	let s = if s.[String.length s - 1] = 'U' then String.sub s 0 (String.length s - 1) else s in
	  Number (Int64.of_string s) 
      }
  | '\'' _ '\'' { 
	let s = Lexing.lexeme lexbuf in
	  Char s.[1] 
      }
  | '\n' { objc_dot_h lexbuf }
  | [' ' '\t'] { objc_dot_h lexbuf }
  | eof { EOF }

and comment = parse
  | "*/" { Comment "" }
  | eof { EOF }
  | _ { comment lexbuf } 

and preproc = parse
  | [^ '\n']* { 
	let l = Lexing.lexeme lexbuf in
	  if l<> "" && l.[String.length l - 1] = '\\' then
	    Preproc (l ^ multiline lexbuf)  
	  else
	    Preproc l
      }

and multiline = parse
  | '\n'[^ '\n']* { 
	let l = Lexing.lexeme lexbuf in
	  if l <> "" && l.[String.length l - 1] = '\\' then
	    l ^ multiline lexbuf
	  else l
      }
and import = parse
  | [' ' '\t' ] { import lexbuf }
  | '<' ['A'-'Z''a'-'z' '-' '/']* ".h>" { 
	let l = Lexing.lexeme lexbuf in 
	  Import (String.sub l 1 (String.length l - 2))
      }

{

(* Filtering out some constructs for now *)
let rec filtered_stream lexer n =
  match objc_dot_h lexer with
    | EOF -> None
    | Preproc s -> filtered_stream lexer (succ n)
    | Comment s -> filtered_stream lexer (succ n)
    | t -> Some t

}
