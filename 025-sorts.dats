(* Sorts *)

(* Define a sort. *)
sortdef nat = {a: int | a >= 0}

(* Define a natural type. It's existential constrained upon the sort `nat'. *)
typedef Nat = [a:nat] int (a)

(* A valid natural number. *)
val _ = 2 : Nat

(* The following does not compile: *)
(* val _ = 5-2 : Nat *)

implement main () = ()
