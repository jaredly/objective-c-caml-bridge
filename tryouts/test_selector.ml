external init_foo : unit -> unit = "init_foo"

let _ =
  Selector.init();
  init_foo();
  let _ = Selector.find "setLocale:" 
  and _ = Selector.find "rangeOfUnit:inUnit:forDate:"
  in
    prerr_endline "Found 2 selectors"
