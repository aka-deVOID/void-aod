function main()
    horiz, depth = 0, 0
    data = readlines(open("inputs.txt", "r"))
    for item in data
        text, number = split(item, " ")
        if text == "forward"
            horiz += parse(Int, number)
        elseif text == "down"
            depth += parse(Int, number)
        elseif text == "up"
            depth -= parse(Int, number)
        end
    end
    return horiz * depth
end
println(main())