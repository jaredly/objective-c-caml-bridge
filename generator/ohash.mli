(** Hash table utils *)
(** Copyright 2007, Francois Rouaix - extracted out of libfmr to simplify distribution *)


(** Object version of the standard library Hashtbl.t *)
class ['a, 'b] t : int -> object ('t)
  method add : 'a -> 'b -> unit
  method clear : unit
  method copy : 't
  method find : 'a -> 'b
  method find_all : 'a -> 'b list
  method fold : ('a -> 'b -> 'c -> 'c) -> 'c -> 'c
  method iter : ('a -> 'b -> unit) -> unit
  method length : int
  method mem : 'a -> bool
  method remove : 'a -> unit
  method replace : 'a -> 'b -> unit
  method keys : 'a list
end


(** Hashtable were #find automatically creates a default entry using the
   default creation function *)
class ['a, 'b] autoinit : ('a -> 'b) -> int -> object ('t)
  inherit ['a,'b] t
  method find_noadd : 'a -> 'b
end
