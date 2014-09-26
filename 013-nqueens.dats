(* N-queens problem. *)

(* Board size. *)
val size : int = 8

(* Define an 8-tuple of ints. *)
typedef Int8 = (int,int,int,int,int,int,int,int)

(* Print n dots. *)
fun printDots (i : int) : void =
  if i > 0
     then begin print ". ";
                printDots (i-1);
          end

(* Print a row of the board. *)
fun printRow (i : int) : void =
  begin
    printDots i;
    print "Q ";
    printDots (size - i - 1);
    print "\n";
  end

(* Print rows of the board. *)
fun printBoard (bd : Int8) : void =
  begin
    printRow bd.0;
    printRow bd.1;
    printRow bd.2;
    printRow bd.3;
    printRow bd.4;
    printRow bd.5;
    printRow bd.6;
    printRow bd.7;
    print "\n";
  end

(* Get a slot from the board. *)
fun boardIndex (bd : Int8,i : int) : int =
  case i of
    | 0 => bd.0
    | 1 => bd.1
    | 2 => bd.2
    | 3 => bd.3
    | 4 => bd.4
    | 5 => bd.5
    | 6 => bd.6
    | 7 => bd.7
    | _ => ~1

(* Set a value in the board. *)
fun boardSet (bd : Int8,i : int,j:int) : Int8 =
  let val (x0,x1,x2,x3,x4,x5,x6,x7) = bd
  in case i of
       | 0 => (j,x1,x2,x3,x4,x5,x6,x7)
       | 1 => (x0,j,x2,x3,x4,x5,x6,x7)
       | 2 => (x0,x1,j,x3,x4,x5,x6,x7)
       | 3 => (x0,x1,x2,j,x4,x5,x6,x7)
       | 4 => (x0,x1,x2,x3,j,x5,x6,x7)
       | 5 => (x0,x1,x2,x3,x4,j,x6,x7)
       | 6 => (x0,x1,x2,x3,x4,x5,j,x7)
       | 7 => (x0,x1,x2,x3,x4,x5,x6,j)
       | _ => bd
  end

(* Can a queen piece on row i0 and column j0 capture another one on row i and column j? *)
fun canCapture (i0: int,j0: int,i1: int,j1: int) : bool =
  j0 <> j1 andalso
  abs (i0 - i1) <> abs (j0 - j1)

(* Can a queen piece on row i0 and column j0 capture any pieces on
   a given board with a row number less than or equal to i?
*)
fun canCaptureLess (i0: int,j0: int,bd: Int8,i: int) : bool =
  if i >= 0
     then if canCapture (i0,j0,i,boardIndex (bd,i))
             then canCaptureLess (i0,j0,bd,i-1)
             else false
     else true

(* Search for and print all solutions. *)
fun search (bd : Int8,i: int,j: int,nsol: int) : int =
  if j < size
     then
       if canCaptureLess (i,j,bd,i-1)
          then
            let val bd1 = boardSet (bd,i,j)
            in if i+1 = size
                  then begin
                         print! ("This is solution no. ",nsol + 1,":\n\n");
                         printBoard bd1;
                         search (bd,i,j + 1,nsol + 1);
                       end
                  else search (bd1,i + 1,0,nsol)
            end
          else search (bd,i,j + 1,nsol)
     else if i > 0
             then search (bd,i - 1,boardIndex (bd,i - 1) + 1,nsol)
             else nsol

(* Print a sample board. *)
val _ = printBoard @(0,1,2,3,4,5,6,7)

(* Print out solutions. *)
val _ = search (@(0,0,0,0,0,0,0,0),0,1,0)

implement main () = ()
