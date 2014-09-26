(* Records. *)

(* Defines an unboxed record type named ‘point2d’ with fields ‘x’ and ‘y’. *)
typedef Point2D = @{x = double,y = double}

(* Make a record of type ‘Point2D’: *)
val origin = @{x = 1.0,y = 2.0} : Point2D

(* Access the fields of the record: *)
val originX = origin.x
and originY = origin.y

(* Alternatively, pattern matching can be used: *)
val @{x = originX,y = originY} = origin

(* Wildcards can be used to ignore all fields but a few: *)
val @{x = originX,...} = origin

implement main () = ()
