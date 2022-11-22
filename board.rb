require_relative 'card.rb'
require_relative 'game.rb'

class Board
    def initialize
        @grid = Array.new(3) {Array.new(3)}
    end
end