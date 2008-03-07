let _ = Debug.set_level 20 (* print only messages w/ level <= 20 *)

let () =
  let ow = Writing.ow ~out_dir:"./foundation/" "Foundation" in
  let had_cli_arg = ref false 
  and deps_only = ref false
  and todo = Generator.todo()
  in
    Arg.parse ["-d", Arg.Set deps_only, "Dependencies only"]
      (fun s ->
	let f = Filename.concat Tiger.foundation_directory s in
	  had_cli_arg := true;
	  Generator.compile_file [] ow todo f)
      "Bridge";
    if not !had_cli_arg then begin
	(* First pass: compute dependencies *)
	List.iter (Dependencies.dependencies_file) Tiger.foundation;
	let corder, cycles = Dependencies.deps#sort in
	  Debug.f "Compile order:";
	  List.iter prerr_endline corder;
	  Debug.f "Cycles:";
	  List.iter (fun c -> 
	    prerr_endline (String.concat " " c))
	    cycles;
	  (* Second pass: generate per-class code *)
	  if not !deps_only then begin
		List.iter (Generator.compile_file (List.concat cycles) ow todo) Tiger.foundation;
	      todo#compile cycles ow

	    end
      end;
    ow#flush

	      
