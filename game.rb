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
            guessed_pos = gets.chomp.split(" ").map {|ele| ele.to_i}

            make_guess(guessed_pos)
        end
    end


    def make_guess(pos)
        if previous_guess == nil
            @grid[guessed_pos].reveal
            previous_guess = guessed_pos
        else
            unless @grid[guessed_pos] == @grid[previous_guess]
                @grid[guessed_pos].hide
                @grid[previous_guess].hide
                guessed_pos = nil
                previous_guess = nil
            end
        end
    end
end