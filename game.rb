require_relative 'card.rb'
require_relative 'game.rb'

class Game 

    attr_accesor :board

    def initialize
        @board = Board.new
        @previous_guess
    end

    def play
        @board.populate
        until @board.won?
            @board.render
            guessed_pos = gets.chomp.split(" ").map {|ele| ele.to_i}

            make_guess(guessed_pos)
        end
    end


    def make_guess(pos)

    end
end