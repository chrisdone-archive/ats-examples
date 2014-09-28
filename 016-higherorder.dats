(* Higher-order functions *)

(* Given a function from integers to integers, rtfind searches for the
   first natural number that is a root of the function. For instance,
   calling rtfind on the polynomial function lam x => x * x - x + 110
   returns 11. Note that rtfind loops forever if it is applied to a
   function that does not have a root.
 *)
fun rtfind (f : int -> int) : int =
  loop (f,0)
  where {
    fun loop (f : int -> int,n : int) : int =
      if f (n) = 0
         then n
         else loop (f,n + 1)
  }

(* An integer fold. *)
fun ifold (n : int,f : (int,int) -> int,ini : int) : int =
  if n > 0
     then f (ifold (n - 1,f,ini),n)
     else ini

(* Sum implemented in terms of ifold. *)
fun sum (n : int) : int =
  ifold (n,lam (res,x) => res + x,0)

(* Prod implemented in terms of ifold. *)
fun prod (n : int) : int =
  ifold (n,lam (res,x) => res * x,1)

(* Compute the sum of the squares of the integers ranging from 1 to a
given natural number. *)
fun sqrsum (n : int) : int =
  ifold (n,lam (res,x) => res + x * x,0)

(* Demos of functions defined in terms of higher-order functions. *)
val _ =
  begin print! (sqrsum 6,"\n");
        print! (prod 5,"\n");
        print! (sum 10,"\n");
  end

implement main () = ()
