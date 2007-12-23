(** Copyright 2007, Francois Rouaix - extracted out of libfmr to simplify distribution *)

class ['a,'b] t n = object
  val h = (Hashtbl.create n : ('a, 'b) Hashtbl.t)
  method clear = Hashtbl.clear h
  method add = Hashtbl.add h
  method copy = {< h = Hashtbl.copy h >}
  method find = Hashtbl.find h
  method find_all = Hashtbl.find_all h
  method mem = Hashtbl.mem h
  method remove = Hashtbl.remove h
  method replace = Hashtbl.replace h
  method iter f = Hashtbl.iter f h
  method fold : 'c. ('a -> 'b -> 'c -> 'c) -> 'c -> 'c = fun f -> Hashtbl.fold f h
  method length = Hashtbl.length h
  method keys = Hashtbl.fold (fun k v l ->  k::l) h []
end


class ['a,'b] autoinit f n = object
  inherit ['a,'b] t n as super

  method find x = 
    try
      super#find x
    with
      | Not_found -> 
	  let v = f x in
	    super#add x v;
	    v

  method find_noadd x =
    try
      super#find x
    with
      | Not_found -> f x
    
end
