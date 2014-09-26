(* Local bindings. *)

(* The ‘area’ binding is global, but PI and ardius are now local. *)
val area =
  let val pi = 3.14
      val radius = 10.0
  in pi * radius * radius
  end

(* Alternatively, ‘where’ syntax can be used: *)
val area =
  pi * radius * radius
  where {
    val pi = 3.14
    val radius = 10.0
  }

(* Main entry point. *)
val _ = print area

implement main () = ()
