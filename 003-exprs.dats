(* Examples of expression types. *)

(* Integrals are like this. *)
val integral = 1 * 2

(* Numbers are automatically floating if written like this. *)
val floating = 1.0 / 3

(* Operator functions can be used prefix like this. *)
val prefixOp = op/(1.0,3)

(* Characters. *)
val char = 'c'

(* Negative numbers use a tilde. *)
val negative = ~5

implement main () = ()
