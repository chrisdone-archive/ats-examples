(* Currying *)

(* Uncurried Ackermann. *)
fun acker1 (m: int, n: int): int =
  if m > 0 then
    if n > 0 then acker1 (m-1, acker1 (m, n-1)) else acker1 (m-1, 1)
  else n+1

(* Curried Ackermann. *)
fun acker2 (m: int) (n: int): int =
  if m > 0 then
    if n > 0 then acker2 (m-1) (acker2 m (n-1)) else acker2 (m-1) 1
  else n+1

(* Demo of uncurried vs curried args. *)
val _ =
  begin print! (acker1 (2,2),"\n");
        print! (acker2 2 2,"\n");
  end

implement main () = ()
