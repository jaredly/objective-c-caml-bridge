(** Writing utilities *)
open Printf

(* writing directly to a file *)
class abstract_out_channel oc = object
  method output_string s = output_string oc s
  method output_char c = output_char oc c
  method close = close_out oc
  method write (w : string -> unit) = assert false; ()
end

(* writing to a buffer so we can collect into a file later *)
class abstract_buffer = object
  val b = Buffer.create 256
  method output_string s = Buffer.add_string b s
  method output_char c = Buffer.add_char b c
  method write (w : string -> unit) = w (Buffer.contents b)
end

(* we want to generate code, and be able to easily comment it out 
   if we detect something in the output that matches a certain regexp.
 *)
class deferred r (c_start, c_end) oc = object (self)
  val buffer = Buffer.create 256
  val mutable defer_mode = false
  method output_string s =
    if defer_mode then Buffer.add_string buffer s
    else oc#output_string s
  method output_char c =
    if defer_mode then Buffer.add_char buffer c
    else oc#output_char c
  method defer = defer_mode <- true
    
  (* flush clears out the buffer *)
  method flush = 
    let finally() = defer_mode <- false; Buffer.clear buffer in
    let s = Buffer.contents buffer in 
      try 
	let _ = Str.search_forward r s 0 in
	  oc#output_string c_start;
	  oc#output_string s;
	  oc#output_string c_end;
	  finally()
      with
	| Not_found -> 
	    oc#output_string s;
	    finally()

  method write (w : string -> unit) = (oc#write w : unit)
end

class virtual formatter = object (self)
    method virtual output_string : string -> unit
    method virtual output_char : char -> unit
    method w = self#output_string
    method tab lvl s = 
      for i = 1 to lvl do self#output_char ' ' done;
      self#output_string s
end


let default_out_dir = ref "./lib"

(* what we look for to comment out stuff that can't compile or won't work *)
let r_unsupported = Str.regexp_string "unsupported"

class ml_deferred framework header aio = object (self)
  inherit deferred r_unsupported ("(*  UNSUPPORTED\n", "\n*)\n")  aio
  inherit formatter
  method prelude (w : string -> unit) = 
    let base = Filename.chop_suffix header ".ml" in
    kprintf w "(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)\n";
    kprintf w "open Objc\n";
    kprintf w "\n";

  method postlude (w : string -> unit) = 
    ()
end

let base f = Filename.chop_suffix (Filename.basename f) ".h"

let ow ?(out_dir = !default_out_dir) framework = 
  let o = object
    val modbuffers = new Ohash.autoinit (fun k -> 
      if Filename.check_suffix k ".ml" then
	new ml_deferred framework k (new abstract_buffer)
      else 
	assert false)
      123
    method get = modbuffers#find
      
    method flush = modbuffers#iter (fun k b ->
      Debug.f "Flushing buffer %s" k;
      let oc = open_out (Filename.concat out_dir k) in
      let w = output_string oc in
	b#prelude w;
	b#write w;
	b#postlude w;
	close_out oc)
  end in
    o
