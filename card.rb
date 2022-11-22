require_relative 'board.rb'
require_relative 'game.rb'

class Card
    attr_reader :face_value, :faceup

    def initialize(value)
        @face_value = value
        @faceup = false
    end

    def display
        @face_value if @faceup == true
    end

    def hide
        @faceup = false
    end

    def to_s
        @face_value.to_s
    end
end