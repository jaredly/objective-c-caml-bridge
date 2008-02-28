let handle_cycles = ref false

let run() =
  let o = Tsort.create () in
  try
    while true do
      Scanf.fscanf stdin "%s %s\n"
	(fun x1 x2 ->
	  Tsort.add_element o x1;
	  Tsort.add_element o x2;
	  Tsort.add_relation o x1 x2)
    done
  with
    | End_of_file ->
	if !handle_cycles then
	  let res, cycles = Tsort.sort_with_cycles o in
	    List.iter print_endline res;
	    List.iter (fun c -> 
	      print_char '#';
	      print_endline (String.concat " " c))
	      cycles
	else
	  List.iter print_endline (Tsort.sort o)

let _ =
  Arg.parse ["-c", Arg.Set handle_cycles, "Handle cycles"]
    (fun s -> ())
    "Topological sort";
  run()
