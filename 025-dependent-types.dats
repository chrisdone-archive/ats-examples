(* Dependent types *)

(* Define a sort. *)
sortdef nat = {a: int | a >= 0}

(* Define a natural type. It's existential constrained upon the sort `nat'. *)
typedef Nat = [a:nat] int (a)

(* A valid natural number. *)
val _ = 2 : Nat

(* The following does not compile: *)
(* val _ = 5-2 : Nat *)

(* Successor that only accepts integers i>=0 and must return i+1. *)
fun {i : int | i >= 0} succ (i : int i) : int (i + 1) =
  i + 1

(* Use of succ. *)
val _ = succ (5-2)

implement main () = ()
