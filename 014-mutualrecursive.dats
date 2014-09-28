(* Mutually recursive functions. *)

(* Use the fn* function, sort of wildcard :  combine all the functions
   into one and uses local jumps for calling eachother.
*)
fn* isevn (n : int) : bool =
  if n > 0
     then isodd (n - 1)
     else true
and isodd (n : int) : bool =
  if n > 0
     then isevn (n - 1)
     else false

(* Print out a standard multiplication table for nonzero digits. *)
fun print_multable () =
  go1 1
  where {
    fn* go1 (i : int) : void =
      if i <= 9
         then go2 (i,1)
         else ()
    and go2 (i : int,j : int) : void =
      if j <= i
         then begin if j >= 2 then print " ";
                    printf ("%dx%d=%2.2d",@(j,i,j * i));
                    go2 (i,j + 1)
              end
         else begin print_newline ();
                    go1 (i + 1)
              end
  }

val _ = print_multable ()

implement main () = ()
