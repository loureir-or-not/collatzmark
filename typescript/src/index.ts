function collatz(n: number): number {
  if (n % 2 == 0)
    return n / 2
  else
    return 3 * n + 1;
}

function collatzConjecture(n: number): string {
  let res = `${n}: `;
  for (let i = n; i != 1; i = collatz(i)) {
    res += `${i}, `;
  }
  res += "1";
  return res;
}

for (let i = 1; i <= 10000; i++) {
  console.log(collatzConjecture(i));
}

export = {
  collatzConjecture,
}
