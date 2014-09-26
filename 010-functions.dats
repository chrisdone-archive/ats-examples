(* Functions. *)

(* Define a non-recursive symbol x² function. *)
fn square (x : double) : double =
  x * x

(* Anonymous function: *)
val square =
  lam (x : double) : double =>
    x * x

(* Defines a multi-argument function. *)
fn areaOfRing (R : double, r : double) : double =
  3.1416 * (square R - square r)

(* Use the square function: *)
val _ = print (square 5.0)

(* Use the areaOfRing function: *)
val _ = print (areaOfRing (5.0,2.0))

implement main () = ()
