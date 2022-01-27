def main() -> int:
    horiz, depth, aim = 0, 0, 0
    data = open("inputs.txt").readlines()
    for item in data:
        text, number = item.split(" ")
        match text:
            case "forward":
                horiz += int(number)
                depth += aim*int(number)
            case "down":
                aim += int(number)
            case "up":
                aim -= int(number)
    return horiz * depth

if __name__ == "__main__":
    print(main())
