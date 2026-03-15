#include <stdio.h>
#include <stdlib.h>

#define collatz(n) n % 2 == 0 ? n / 2 : 3 * n + 1

#define BUFSIZE 8192

int collatzSequence(char *buf, int n) {
  int pos = snprintf(buf, BUFSIZE, "%d: ", n);
  int s = 0;
  if (pos < 0) {
    return -1;
  }
  int i = n;
  while (i != 1) {
    s = snprintf(buf + pos, BUFSIZE - pos, "%d, ", i);
    if (s < 0)
      return -1;
    else
      pos += s;
    i = collatz(i);
  }
  s = snprintf(buf + pos, BUFSIZE - pos, "1");
  if (s < 0)
    return -1;
  else
    pos += s;
  return pos;
}

int main() {
  char *buf = malloc(BUFSIZE + 1 * sizeof(char *));
  if (buf == NULL) {
    fprintf(stderr, "Failed to allocate buffer of %d bytes", BUFSIZE);
    return 1;
  }
  for (int i = 1; i <= 10000; i++) {
    if (collatzSequence(buf, i) >= 0)
      printf("%s\n", buf);
    else {
      printf("Creating sequence from number %d failed", i);
      return 1;
    }
  }
  return 0;
}
