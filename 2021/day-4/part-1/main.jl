datas = readlines(open("inputs.txt", "r"))
first_line = parse.(Int, split(popfirst!(datas), ",")); pushfirst!(datas)
board = Vector{Matrix{Int}}(undef, length(datas) ÷ 6)
#println(datas)
for (i, j) in enumerate(1:6:length(datas)-1)
    board[i] = Matrix{Int}(undef, 5, 5)
    for line_index in 1:5
        board[i][line_index, :] .= parse.(Int, split(datas[j+line_index]))
    end
end
println(board)
