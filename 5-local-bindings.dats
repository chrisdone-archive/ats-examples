(* Local bindings. *)

(* The ‘area’ binding is global, but PI and ardius are now local. *)
val area =
  let val PI = 3.14
      and radius = 10.0
  in PI * radius * radius
end

(* Main entry point. *)
val _ = print area

implement main () = ()
