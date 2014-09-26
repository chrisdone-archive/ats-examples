(* atscc -o imports imports.dats *)

staload _(*anon*) = "libc/SATS/stdio.sats"
staload _(*anon*) = "prelude/DATS/array.dats"
staload _(*anon*) = "prelude/DATS/array0.dats"
staload _(*anon*) = "prelude/DATS/list.dats"
staload _(*anon*) = "prelude/DATS/list0.dats"
staload _(*anon*) = "prelude/DATS/list_vt.dats"
staload _(*anon*) = "prelude/DATS/matrix.dats"
staload _(*anon*) = "prelude/DATS/matrix0.dats"
staload _(*anon*) = "prelude/DATS/option.dats"
staload _(*anon*) = "prelude/DATS/option0.dats"
staload _(*anon*) = "prelude/DATS/pointer.dats"
staload _(*anon*) = "prelude/DATS/reference.dats"

val _ = print ("Here is a bunch of useful imports, like a prelude.\n")

implement main () = ()
