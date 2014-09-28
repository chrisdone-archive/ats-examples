(* Matrices *)

(* Transpose a matrix. *)
fun {a : t@ype} transpose (matrix : matrix0 a) : void =
  goRows 0
  where {
    val nrow = matrix0_row (matrix)
    fn* goRows (i : size_t) :<cloref1> void =
      if i < nrow
         then goCols (i,0)
         else ()
    and goCols (i : size_t,j : size_t) :<cloref1> void =
      if j < i
         then let val tmp = matrix[i,j]
              in begin matrix[i,j] := matrix[j,i];
                       matrix[j,i] := tmp;
                       goCols (i,j + 1)
                 end
              end
         else goRows (i + 1)
  }

implement main () = ()
