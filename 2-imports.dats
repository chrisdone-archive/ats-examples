(* Import some prelude-like functions. *)

staload _ = "libc/SATS/stdio.sats"
staload _ = "prelude/DATS/array.dats"
staload _ = "prelude/DATS/array0.dats"
staload _ = "prelude/DATS/list.dats"
staload _ = "prelude/DATS/list0.dats"
staload _ = "prelude/DATS/list_vt.dats"
staload _ = "prelude/DATS/matrix.dats"
staload _ = "prelude/DATS/matrix0.dats"
staload _ = "prelude/DATS/option.dats"
staload _ = "prelude/DATS/option0.dats"
staload _ = "prelude/DATS/pointer.dats"
staload _ = "prelude/DATS/reference.dats"

(* Main entry point. *)
val _ = print "Here is a bunch of useful imports, like a prelude.\n"

implement main () = ()
