let collatz x =
    if x mod 2 == 0
    then x / 2
    else 3 * x + 1

let rec collatz_sequence x =
    if x == 1
    then ""
    else string_of_int (collatz x) ^ " " ^ collatz_sequence (collatz x)

let () =
    for i = 1 to 10000 do
        print_endline (string_of_int i ^ ": " ^ collatz_sequence i)
    done