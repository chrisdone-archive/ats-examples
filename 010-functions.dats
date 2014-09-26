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

(* Defines a recursive function. *)
fun sum1 (n : int) : int =
  if n >= 1
     then sum1 (n - 1) + n
     else 0

(* Two-arg recursive function. *)
fun sum2 (m : int, n : int) : int =
  if m <= n
     then m + sum2 (m + 1, n)
     else 0

(* Use the square function: *)
val _ =
  begin print (sum1 10);
        print "\n";
  end

(* Use the square function: *)
val _ =
  begin print (square 5.0);
        print "\n";
  end

(* Use the areaOfRing function: *)
val _ = print (areaOfRing (5.0,2.0))

implement main () = ()
