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
  def compare_hands(all_hands)

  end

  def evaluate_hand(hand)

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

end
