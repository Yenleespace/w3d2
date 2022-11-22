class Card
   attr_reader :face_value
    def initialize(value)
    @face_value = value
    @faceup = false
   end
   
   def display
    return @face_value if @faceup == true
   end

   def hide
    @faceup = false if @faceup == true
   end

end