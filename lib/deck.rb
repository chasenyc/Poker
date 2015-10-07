class Deck
  attr_reader :cards

  def initialize
    populate_deck
  end

  def populate_deck
    @cards = []
    suits = [:hearts, :clubs, :diamonds, :spades]
    suits.each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
      end
    end
    shuffle!
  end

  def shuffle!
    cards.shuffle!
  end

  def deal_card(num)
    dealt_cards = []
    num.times {dealt_cards << cards.pop}
    dealt_cards
  end
end
