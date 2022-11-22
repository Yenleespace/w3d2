require_relative 'card.rb'
require_relative 'game.rb'

class Board
    attr_reader :grid
    
    def initialize
        @grid = Array.new(3) {Array.new(3)}
    end

    def populate
        chars = ('A'..'Z').to_a
        arr = chars.sample(5)
        total_cards = arr.concat(arr).shuffle
        @grid.each_with_index do |ele1, i|
            @grid.each_with_index do |ele2, j|
                @grid[i][j] = Card.new(total_cards.shift) 
            end
        end
    end

    def render
        @grid.each_with_index do |row, i|
            render_row = [i]
            row.each do |ele|
                if ele.hide == true
                    render_row << ele + ' '
                else
                    render_row << '? '
                end
            end
            puts render_row.join(' ')
        end
    end

    def won?
        @grid.flatten.all? {|ele| ele.visible?}
    end

    def reveal(guessed_pos)
        self[guessed_pos].reveal
    end

    def hide(guessed_pos)
        self[guessed_pos].hide
    end

    def [](pos)
        x, y = pos
        @grid[x][y]
    end

end