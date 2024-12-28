#!/bin/bash

collatz() {
    [ "$(( $1 % 2 ))" -eq 0 ] && echo "$(( $1 / 2 ))" || echo "$(( $1 * 3 + 1 ))"
}

collatz_sequence() {
    [ "$1" -eq 1 ] && echo "" && exit

    x="$(collatz "$1")"
    while [ "$x" -ne 1 ]
    do
        echo -n "$x, "
        x="$(collatz "$x")"
    done

    echo "1"
}

for i in {1..10000}
do
    echo "$i: $(collatz_sequence "$i")"
done
