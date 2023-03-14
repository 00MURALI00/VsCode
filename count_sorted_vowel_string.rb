def count_vowel_strings(n)
    board = Array.new(n, Array.new(5))
    board.each_with_index do |sub, i|
        sub.each_with_index do |num, j|
            if i == 0
                board[i][j] = 1 
            else
                sum = 0
                l = j + 1
                while l < sub.length
                    sum += board[i - 1][l]
                    l += 1
                end
                board[i][j] = board[i - 1][j] + sum
            end
        end
    end
    sum = 0
    board[n - 1].sum
end

puts count_vowel_strings(1)