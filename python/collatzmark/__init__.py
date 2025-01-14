def collatz(x):
    return x // 2 if x % 2 == 0 else 3 * x + 1


def collatz_sequence(x):
    if x == 1:
        return ""

    sb = ""
    i = collatz(x)
    while i != 1:
        sb += f"{i},"
        i = collatz(i)

    sb += "1"
    return sb

def __main__():
    print("\n".join([f"{i + 1}: {collatz_sequence(i + 1)}" for i in range(10000)]))

if __name__ == "__main__":
    __main__()