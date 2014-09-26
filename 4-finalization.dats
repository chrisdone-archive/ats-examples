(* No guarantee of order for finalization for pi and radius. *)
val pi = 3.14 and radius = 10.0

(* However, area will be finalized after both pi and radius. *)
val area = pi * radius * radius

(* Just print the area to stdout. *)
val _ = print area

implement main () = ()
