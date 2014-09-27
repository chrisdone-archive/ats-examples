(* Closures

   Functions in ATS, like C, do not carry environments for
   closures. Use :<cloref1> to enable this.

 *)

(* Use the cloref1 type to indicate that `loop` closes over `n'.
   Note that there is no space between : and <cloref1>.
 *)
fun sum (n : int) : int =
  let fun loop (i : int, res : int) :<cloref1> int =
        if i <= n
           then loop (i + 1,res + i)
           else res
  in loop (1,0)
  end

(* Making anonymous closing functions. *)
fun addx (x : int) : int -<cloref1> int =
  lam y => x + y

(* plus1 has type int -<cloref1> int *)
val plus1 = addx (1)

(* plus2 has type int -<cloref1> int *)
val plus2 = addx (2)

(* Demonstrate closure calls. *)
val _ =
  begin print! (sum 10,"\n");
        print! (plus1 10,"\n");
        print! (plus2 10,"\n");
  end

implement main () = ()
