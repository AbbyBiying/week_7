 class Card
   attr_reader :card
  
   VALUE = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K"]


   SUIT = ["C", "D", "H", "S"]

   def show
    VALUE.each do |value|
      SUIT.each do |suit|
        puts value + suit 
      end
    end 
  end

end 
 
array = []
array << Card.new.show 