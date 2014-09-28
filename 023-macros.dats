(* Macros *)

(* A macro to compute cubes. *)
macrodef cube (x) =
  `(,(x) * ,(x) * ,(x))

(* Example of using cube. *)
fun cubesum (i : int,j : int) : int =
  ,(cube `(i)) + ,(cube `(j))

implement main () = ()
