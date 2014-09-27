(* Function templates *)

(* This function is polymorphic over the two types of the tuple. *)
fun {a,b : t@ype} swap ((x,y) : (a,b)) = (y,x)
(*         ^ Yes, that is a real keyword. I am not making this up. *)

(* Basic tuple. *)
val ab = (10,"foo")

(* Swapped tuple. *)
val ba = swap ab

(* Compose two functions. *)
typedef Compose (f : t@ype, g : t@ype) =
  f -<cloref1> g
(*  ^ Yep, that's also real. *)

(* In Haskell this type is like:

   (.) :: (b -> c) -> (a -> b) -> (a -> c)

 *)
fun {a,b,c : t@ype} compose (f : Compose (b,c),g : Compose (a,b)) :<cloref1> Compose (a,c) =
  lam x => f (g x)

(* Simple function to be used in composition. *)
val plus1 = lam (x : int) : int =<cloref1>
  x + 1

(* Simple function to be used in composition. *)
val times2 = lam (x : int) : int =<cloref1>
  x * 2

(* Composition of two functions. *)
val plus1ThenTimes2: Compose (int,int) =
  compose (times2,plus1)

(* Composition of two functions: visa-versa *)
(* Alternate way of writing. *)
val times2ThenPlus1: int -<cloref1> int =
  compose (plus1,times2)

(* Demo of templates. *)
val _ =
  begin
    print! (ab.0,",",ab.1,"\n");
    print! (ba.0,",",ba.1,"\n");
    print! (times2ThenPlus1 5);
  end

implement main () = ()
