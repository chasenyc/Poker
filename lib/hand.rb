class Hand

  RANKS =  {
    :straight_flush => 1,
    :four_of_a_kind => 2,
    :full_house => 3,
    :flush => 4,
    :straight =>5,
    :three_of_a_kind => 6,
    :two_pair => 7,
    :one_pair => 8,
    :high_card => 9
  }

  attr_accessor :hand

  def initialize
    @cards = []
  end

  def evaluate_hand(hand)
    same_suit = all_same_suit?(hand)
    frequency = count_cards(hand)
  end

  def count_cards(hand)
    count = Hash.new(0)
    hand.each do |card|
      count[card.value] += 1
    end
    count
  end

  def all_same_suit?(hand)
    hand.all? {|h| h.suit == hand.first.suit }
  end

  def best_hand?(frequency, same_suit)


  end

  def straight_flush?(frequency, same_suit)
      return false unless same_suit
      return false if frequency.count != 5
      return (frequency.keys.max - frequency.keys.min == 4)
      false
  end

  def four_of_a_kind?(frequency)
    frequency.values.any? {|value| value == 4}
  end



end
