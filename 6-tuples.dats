(* Demonstrating tuples. *)

(* Tuple syntax. *)
val xyz = ('A',1,2.0)

(* Tuple slots are access via their indexes. *)
val x = xyz.0
and y = xyz.1
and z = xyz.2

(* Printing each one out. *)

val _ = print x
val _ = print "\n"

val _ = print y
val _ = print "\n"

val _ = print z
val _ = print "\n"

implement main () = ()
