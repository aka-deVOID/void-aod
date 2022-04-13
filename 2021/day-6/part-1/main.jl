data = parse.(Int, split(readline(open("inputs.txt")), ","))

function per_day(data, days)

    sim = Dict(i => count(==(i), data) for i in 0:8)
    idx = vcat(0:5, 7)

    for _ in 1:days
        old = copy(sim)
        for i in idx
            sim[i] = old[i+1]
        end
        sim[6] = old[7] + old[0]
        sim[8] = old[0]
    end
    return sum(values(sim))

end
println(per_day(data, 80))
