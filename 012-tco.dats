(* Tail-call optimization. *)

(* Lispers, MLers and Haskellers will be familiar with this problem. *)
(* You really need this if you want to write efficient loops. *)

(* Tail recursive sum function. *)
fun sum (n : int,acc : int) : int =
  if n > 0
     then sum (n - 1,n + acc)
     else acc

(* If you don't want to expose the accumulator argument,
   you can use a local function.
*)
fun sum (n : int) : int =
  let fun go (n : int, acc : int) : int =
        if n > 0
           then go (n - 1,n + acc)
           else acc
  in go (n,0)
  end

(* Example use: *)
val _ = print (sum 10)

implement main () = ()
