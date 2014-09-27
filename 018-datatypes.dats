(* Data types *)

(* A type like Maybe or Option *)
datatype MaybeInt =
  | NothingInt of ()
  | JustInt of int

(* Day of the week. *)
datatype Day =
  | Monday of ()
  | Tuesday of ()
  | Wednesday of ()
  | Thursday of ()
  | Friday of ()
  | Saturday of ()
  | Sunday of ()

(* Char list *)
datatype ListChar =
  | NilChar of () | ConsChar of (char, ListChar)

(* Example of list of chars. *)
val exampleChars =
  ConsChar ('a',ConsChar ('b',ConsChar ('c',NilChar ())))

(* Get length of a list of chars. *)
fun charsLength (cs : ListChar) : int =
  case cs of
    | ConsChar (_,cs) => 1 + charsLength (cs)
    | NilChar () => 0

(* Tail-recursive version of charsLength. *)
fun charsLengthTCO (cs : ListChar) : int =
  let fun go (cs : ListChar,n : int) : int =
        case cs of
          | ConsChar (_,cs) => go (cs,n + 1)
          | NilChar ()      => n
  in go (cs,0)
  end

(* Is the given day a weekday? *)
fun isWeekday (x : Day) : bool =
  case x of
    | Saturday () => false
    | Sunday ()   => false
    | _           => true

(* Demo of types. *)
val mint = JustInt 10
val day =
  case mint of
    | JustInt 0 => Thursday ()
    | JustInt i => Wednesday ()
    | _ => Friday ()
val _ =
  begin print! (case mint of
                  | JustInt 0 => ~1
                  | JustInt i => i
                  | _ => 0
               ,"\n");
        case () of
          () => print! ("Unit is unit!","\n");
        print! (isWeekday day,"\n");
        print (isWeekday (Saturday ()))
  end

implement main () = ()
