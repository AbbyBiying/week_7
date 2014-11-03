class Card
  attr_reader :value, :suit

  SUIT = ["C", "D", "H", "S"]
  
  VALUE = ["A", 2, 3, 4, 5, 6, 7, 8, 9, "T", "J", "Q", "K"]

  def show
    puts "#{VALUE.sample}#{SUIT.sample}"
  end
 
end
 card = Card.new
 card.show

