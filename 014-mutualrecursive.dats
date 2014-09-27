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
  let fn* loop1 (i : int) : void =
        if i <= 9
           then loop2 (i,1)
           else ()
      and loop2 (i : int,j : int) : void =
            if j <= i
               then begin if j >= 2 then print " ";
                          printf ("%dx%d=%2.2d",@(j,i,j * i));
                          loop2 (i,j + 1)
                    end
               else begin print_newline ();
                          loop1 (i + 1)
                    end
  in loop1 1
  end

val _ = print_multable ()

implement main () = ()
