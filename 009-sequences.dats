(* Sequence expressions. *)

(* Runs the print commands in sequence. *)
val _ = (print 'H'
        ;print 'e'
        ;print 'l'
        ;print 'l'
        ;print 'o')

(* Alternative form of sequencing. *)
val _ =
  begin
    print 'H';
    print 'e';
    print 'l';
    print 'l';
    print 'o';
  end

implement main () = ()
