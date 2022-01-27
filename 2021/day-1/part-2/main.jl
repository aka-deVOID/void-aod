function main()
    data = readlines(open("inputs.txt", "r"));
    data = parse.(Int, data);
    count = 0;
    for (index, line) in enumerate(data)
        if index == length(data)-2 
            break 
        end
        if line + data[index+1] + data[index+2] < data[index+1] + data[index+2] + data[index+3]
            count += 1;
        end
    end
    return count;
end
println(main())