open Printf
open Unix

(** printf-based debugging *)
let level = ref 0
let set_level n = level := n
let actor = ref "main"
let actor_f = ref (fun () -> !actor)
let set_actor_f = ref (fun id -> actor := id; 0)

let clock_v = ref 0
let clock_f = ref (fun () -> !clock_v) 
let set_clock_f = ref (fun t -> clock_v := t)

let actor () = !actor_f ()
let clock () = !clock_f ()
let set_clock t = !set_clock_f t
let set_actor id = !set_actor_f id

let writer = ref (fun s -> eprintf "%s\n%!" s)

let f ?(lvl=0) fmt =
  let cont s =
    if lvl <= !level then begin
      let t = Unix.gettimeofday() in
      let tm = Unix.localtime t in
      let s =
	sprintf "%04d%02d%02d-%02d:%02d:%02d.%03d T=%06d A=%s %s"
	  (tm.tm_year + 1900) (tm.tm_mon + 1) (tm.tm_mday) tm.tm_hour tm.tm_min tm.tm_sec
	  (int_of_float ((t -. floor t) *. 1000.)) (clock()) (actor()) s
      in
	!writer s
    end
  in
    kprintf cont fmt

(*
let p ?(lvl=0) s =
  let cont s =
    if lvl <= !level then begin
      let t = Unix.gettimeofday() in
      let tm = Unix.localtime t in
      let s =
	sprintf "%04d%02d%02d-%02d:%02d:%02d.%03d T=%08d A=%s %s"
	  (tm.tm_year + 1900) (tm.tm_mon + 1) (tm.tm_mday) tm.tm_hour tm.tm_min tm.tm_sec
	  (int_of_float ((t -. floor t) *. 1000.)) (clock()) (actor()) s
      in
	!writer s
    end
  in
    cont s
*)	
