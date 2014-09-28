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

(* Is the index at the end of the string? *)
fun atEnd {n : int} {i : nat | i <= n} (str : string n,i : size_t i) : bool (i == n)

(* Is the index NULL? *)
fun notNull {n : int} {i : nat | i <= n} (str : string n, i : size_t i) :
  [c : char | (c <> NUL && i < n) || (c == NUL && i >= n)] char c

(* Use of succ. *)
val _ = succ (5-2)

implement main () = ()
