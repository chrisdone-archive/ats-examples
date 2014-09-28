(* References *)

(* Import references lib. *)
staload _(*anon*) = "prelude/DATS/reference.dats"

(* Create a ref and initialize it with 0. *)
val intr = ref<int> (0)

(* Increment the reference. *)
val () = !intr := !intr + 1
val i = !intr

(* A simple mutable counter. *)
typedef Counter =
 '{ get   = () -<cloref1> int
  , inc   = () -<cloref1> void
  , reset = () -<cloref1> void
  }

(* Make a new counter. *)
fun newCounter () : Counter =
  let val count = ref<int> (0)
  in '{get   = lam () => !count
      ,inc   = lam () => !count := !count + 1
      ,reset = lam () => !count := 0
      }
  end

(* Demo of *)
val _ =
  begin print! (i,"\n");
  end

implement main () = ()
