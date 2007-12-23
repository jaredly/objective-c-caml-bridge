(* Unit test for lexer *)
open Lexobjc

let files =
  ["/System/Library/Frameworks/Foundation.framework/Headers/NSURL.h"]

let lexone f =
  Debug.f "Lexing :%s" f;
  try
    Utils.with_in_channel (open_in f)
      (fun ic ->
	let lexer = Lexing.from_channel ic in
	  while true do
	    let token = Lexobjc.objc_dot_h lexer in
	      Lexobjc.print_token prerr_string token;
	      if token = EOF then raise End_of_file
	  done)
  with
    | End_of_file -> ()

let _ = 
  let had_cli_arg = ref false in
    Arg.parse []
      (fun s -> had_cli_arg := true; lexone s)
      "Test lexer";
    if not !had_cli_arg then begin
	List.iter lexone files;
	List.iter lexone Tiger.foundation
      end
