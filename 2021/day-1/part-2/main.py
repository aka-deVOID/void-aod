def main(input: str) -> int:
    data = list(map(int, open(input).readlines())); count = 0
    for index, value in enumerate(data):
        if index == len(data)-3: break
        if (value + data[index+1] + data[index+2]) < (data[index+1] + data[index+2] + data[index+3]):
                count +=1
    return count

if __name__ == "__main__":
    result = main("./inputs.txt"); print(result)
