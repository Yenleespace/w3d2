require_relative 'card.rb'
require_relative 'game.rb'

class Board
    def initialize
        @grid = Array.new(3) {Array.new(3)}
    end

    def populate
        chars = [a..f]
        chars.each do |ele|
            ele = Card.new
        end
    end
end