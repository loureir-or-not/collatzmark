import std/strformat

proc collatz(x: int): int =
  if x mod 2 == 0:
    return x div 2
  return 3 * x + 1

proc collatz_sequence(x: int): seq[int] =
  if x == 1:
    return @[]

  var res: seq[int] = @[]
  var i: int = collatz(x)
  while i != 1:
    res.add(i)
    i = collatz(i)
  
  res.add(1)
  return res

when isMainModule:
  for i in 1..10000:
    echo &"{i}: {collatz_sequence(i)}"