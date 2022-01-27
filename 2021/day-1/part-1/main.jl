function main()::Int
    filedata = open("inputs.txt", "r");
    data = readlines(filedata);
    count = 0;
    for (index, line) in enumerate(data)
        if parse(Int, line) > parse(Int, index == 1 ? line : data[index-1])
            count += 1;
        end
    end
    return count
end
println(main())