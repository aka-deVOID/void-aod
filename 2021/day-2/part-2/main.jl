function main()
    horiz, depth, aim = 0, 0, 0
    data = readlines(open("inputs.txt", "r"))
    for item in data
        text, number = split(item, " ")
        if text == "forward"
            horiz += parse(Int, number)
            depth += aim*parse(Int, number)
        elseif text == "down"
            aim += parse(Int, number)
        elseif text == "up"
            aim -= parse(Int, number)
        end
    end
    return horiz * depth
end
println(main())