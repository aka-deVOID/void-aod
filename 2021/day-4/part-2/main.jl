# from https://github.com/eliascarv/AdventOfCode2021/blob/main/Day4/day4.jl

data = readlines(open("inputs.txt"))

nums = parse.(Int, split(data[1], ','))

n = length(data) ÷ 6
boards = Vector{Matrix{Int}}(undef, n)
for (i, j) in enumerate(3:6:length(data))
    boards[i] = Matrix{Int}(undef, 5, 5)
    for k in 1:5
        boards[i][k, :] .= parse.(Int, split(data[j+k-1]))
    end
end

function score(board, nums)
    l = last(nums)
    s = sum(board[findall(i -> i ∉ nums, board)])
    return l * s
end

function winlast(boards, nums)
    set = nums[1:4]
    win = falses(length(boards))
    
    for n in nums[5:end]
        push!(set, n)
        for (i, board) in enumerate(boards)
            if win[i] == false
                for col in eachcol(board)
                    col ⊆ set && (win[i] = true)
                end
                for row in eachrow(board)
                    row ⊆ set && (win[i] = true)
                end
            end
            all(win) && return board, set
        end
    end
end

# Solution: 17884
println(score(winlast(boards, nums)...))