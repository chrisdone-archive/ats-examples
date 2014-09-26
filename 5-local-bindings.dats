(* Local bindings. *)

(* You can use ‘let’ syntax to make the ‘area’ binding global, but pi *)
(* and ardius local. *)
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

(* Alternatively, to create many top-level bindings with the same *)
(* scope, you can use ‘local’. *)
local
  val PI = 3.14
  val radius = 10.0
in
  val area = PI * radius * radius
end

(* Main entry point. *)
val _ = print area

implement main () = ()
