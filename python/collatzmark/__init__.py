def collatz(x):
    return int(x / 2) if x % 2 == 0 else 3 * x + 1

def collatz_sequence(x):
    if x == 1:
        return ""
    
    sb = ""
    i = collatz(x)
    while i != 1:
        sb += f"{i}, "
        i = collatz(i)

    sb += "1"
    return sb

if __name__ == "__main__":
    for i in range(1, 10000):
        print(f"{i}: {collatz_sequence(i)}")