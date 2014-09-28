(* The classic coins denominations problem. *)

(* Define a 4-tuple of ints. *)
typedef Int4 = (int, int, int, int)

(* Some example coins. *)
val coins = (1, 5, 10, 25) : Int4

(* Get coin value by index. *)
fun coinIndex (n : int) : int =
  if n = 0
     then coins.0
     else if n = 1
             then coins.1
             else if n = 2
                     then coins.2
                     else if n = 3
                             then coins.3
                             else ~1

(* Calculate change given by a number. *)
fun coinChange (sum : int) =
  go (sum,3)
  where {
    fun go (sum : int,n : int) : int =
      if sum > 0
         then if n >= 0
                 then go (sum,n - 1) +
                      go (sum - coinIndex (n),n)
                 else 0
         else if sum < 0
                 then 0
                 else 1
  }

(* Example usages: *)
val _ =
  begin print (coinChange 25);
        print "\n";
        print (coinChange 100);
        print "\n";
        print (coinChange 0);
        print "\n";
        print (coinChange 1);
        print "\n";
  end

implement main () = ()
