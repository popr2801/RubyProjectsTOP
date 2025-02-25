class Board
    attr_reader :board
    def initialize
        @board = Array.new(3) {["-"] * 3}
    end
    def display
        puts "\n"
        @board.each { |row| puts row.join(" ") }
    end
    def draw_symbol(row,column,symbol)
        @board[row][column] = symbol
    end
    def check_for_win
        @board.each do |row|
            if row.uniq.length == 1 and row[0]!='-'
                return true
            end
        end
        @board.transpose.each do |column|
            if column.uniq.length == 1 and column[0]!='-'
                return true
            end
        end
        if @board[0][0] == @board[1][1] and @board[1][1] == @board[2][2] and @board[1][1]!='-'
            return true
        end
        if @board[0][2] == @board[1][1] and @board[1][1] == @board[2][0] and @board[1][1]!='-'
            return true
        end
        return false
    end


end

board = Board.new
loop do 
    board.display
    puts "Player 1 where do you place X?(row/column)"
    row, column = gets.chomp.split.map(&:to_i)
    board.draw_symbol(row,column,"X")
    if board.check_for_win == true 
        puts "Player 1 won!"
        break
    end
    board.display
    puts "Player 2 where do you place O?(row/column)"
    row, column = gets.chomp.split.map(&:to_i)
    board.draw_symbol(row,column,"O")
    if board.check_for_win == true 
        puts "Player 2 won!"
        break
    end
end

