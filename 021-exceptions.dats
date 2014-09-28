(* Exceptions *)

(* List data type. *)
datatype List (a : t@ype) =
  | Nil (a) of ()
  | Cons (a) of (a,List a)

(* Product of a list of ints. *)
fun listProd (xs : List int) : int =
  let exception DivisionByZero of ()
      fun aux (xs : List int) : int =
        case xs of
          | Cons (x,xs) =>
            if x = 0
               then $raise DivisionByZero()
               else x * aux (xs)
          | Nil => 1
  in try aux (xs)
     with ~DivisionByZero () => 0
  end

(* Demo of exception handling *)
val _ =
  begin print! (listProd(Cons (1,Cons (2,Nil ()))),"\n");
  end

implement main () = ()
