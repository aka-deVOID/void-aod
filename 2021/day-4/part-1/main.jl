datas = readlines(open("inputs.txt", "r"))
first_line = parse.(Int, split(popfirst!(datas), ",")); pushfirst!(datas)
board = Vector{Matrix{Int}}(undef, length(datas) ÷ 6)
for (i, j) in enumerate(1:6:length(datas)-1)
    board[i] = Matrix{Int}(undef, 5, 5)
    for line_index in 1:5
        board[i][line_index, :] .= parse.(Int, split(datas[j+line_index]))
    end
end
new = []
for find_this in first_line
    for (index, matrix) in enumerate(board)
        println(index)
        for col in eachcol(matrix)
            for (index, item) in enumerate(col)
            
            end
        end
        for row in eachrow(matrix)
            println(row)
        end
    end
#println(board)
