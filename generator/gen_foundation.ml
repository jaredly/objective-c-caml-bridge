let _ = Debug.set_level 20 (* print only messages w/ level <= 20 *)

let () =
  let had_cli_arg = ref false in
  Arg.parse []
    (fun s ->
      let f = Filename.concat Tiger.foundation_directory s in
	had_cli_arg := true;
	Generator.compile_file ~out_dir:"./foundation/" f)
    "Bridge";
    if not !had_cli_arg then
      List.iter (Generator.compile_file ~out_dir:"./foundation/") Tiger.foundation
