(* Exceptions *)

(* List data type. *)
datatype List (a : t@ype) =
  | Nil (a) of ()
  | Cons (a) of (a,List a)

(* Product of a list of ints. *)
fun listProd (xs : List int) : int =
  (try go (xs)
   with ~DivisionByZero () => 0)
  where {
    exception DivisionByZero of ()
    fun go (xs : List int) : int =
      case xs of
        | Cons (x,xs) =>
          if x = 0
             then $raise DivisionByZero()
             else x * go (xs)
        | Nil => 1
  }

(* Demo of exception handling *)
val _ =
  begin print! (listProd(Cons (1,Cons (2,Nil ()))),"\n");
  end

implement main () = ()
