require_relative 'board.rb'
require_relative 'game.rb'

class Card
    attr_reader :value, :faceup

    def initialize(value)
        @value = value.to_sym
        @visible = false
    end

    def visible?
        @visible
    end

    def hide
        @visible = false
    end

    def reveal
        @visible = true
    end

    def to_s
        self.value.to_s
    end

    def ==(picked_card)
        self.value == picked_card.val
    end
    
end