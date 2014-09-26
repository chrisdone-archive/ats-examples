(* No guarantee of order for finalization for PI and radius. *)
val PI = 3.14 and radius = 10.0

(* However, area will be finalized after both PI and radius. *)
val area = PI * radius * radius

(* Just print the area to stdout. *)
val _ = print area

implement main () = ()
