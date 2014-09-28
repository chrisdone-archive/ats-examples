(* I/O *)

staload _(*anon*) = "libc/SATS/stdio.sats"

(* Open a file *)
val out = open_file_exn ("hello.txt",file_mode_w)

(* Do some actions with the file *)
val _ =
  begin fprint_string (out,"Hello,world!\n");
        close_file_exn (out);
  end

(* A simple get line / output line loop. *)
fun loop ():  void =
  let val line = input_line (stdin_ref)
  in if stropt_is_some (line)
        then begin output_line (stdout_ref,stropt_unsome (line));
                   loop ();
             end
        else ()
  end

val _ = loop ()

implement main () = ()
