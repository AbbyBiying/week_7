class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def shuffle
    cards.shuffle!
  end

  def show
    cards.shift
  end 


end

deck = Deck.new(cards)
deck.show 
