let _ = Debug.set_level 20 (* print only messages w/ level <= 20 *)

let () =
  let ow = Writing.ow "Foundation" in
    Arg.parse ["-d", Arg.Int Debug.set_level, "Debug level"] 
      (Generator.compile_file [] ow) "Stub generator";
    ow#flush
