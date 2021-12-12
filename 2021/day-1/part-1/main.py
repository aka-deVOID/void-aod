def main(input: str) -> int:
    data = open(input).readlines(); count = 0
    for index, value in enumerate(data):
        if int(value) > int(data[index-1]): count += 1
    return count

if __name__ == "__main__":
    result = main("./inputs.txt"); print(result)
