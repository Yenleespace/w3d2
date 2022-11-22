require_relative 'card.rb'
require_relative 'game.rb'

class Game 

    attr_accessor :board, :guessed_pos, :previous_guess

    def initialize
        @board = Board.new
    end

    def play
        @board.populate
        until @board.won?
            sleep(3)
            system("clear")
            @board.render
            puts 'Enter a position'
            guessed_pos = gets.chomp.split(" ").map {|ele| ele.to_i}
            raise 'Invalid' if guessed_pos.length != 2 
            make_guess(guessed_pos)
        end
        puts "win"
    end


    def make_guess(pos)
        if previous_guess == nil
            @board[guessed_pos].reveal
            previous_guess = guessed_pos
        else
            unless @board[guessed_pos] == @board[previous_guess]
                @board[guessed_pos].hide
                @board[previous_guess].hide
                guessed_pos = nil
                previous_guess = nil
            end
        end
    end
end