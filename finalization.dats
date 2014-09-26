(* atscc -o finalization finalization.dats *)

(* No guarantee of order for finalization for PI and radius. *)
val PI = 3.14 and radius = 10.0

(* However, area will be finalized after both PI and radius. *)
val area = PI * radius * radius

val _ = print area

implement main () = ()
