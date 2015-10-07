require 'hand'
require 'card'

describe "Hand" do
  let (:hand) { Hand.new }
  it "is a class" do
    expect(hand).to be_an_instance_of Hand
  end
  let (:hand) { Hand.new }
  let (:card_one) { Card.new(1, :hearts)}
  let (:card_two) { Card.new(2, :spades)}
  let (:card_three) { Card.new(3, :diamonds)}
  let (:card_four) { Card.new(2, :clubs)}
  let (:card_five) { Card.new(4, :spades)}
  let (:one_pair) { [card_one, card_two, card_three, card_four, card_five] }
  let (:card_six) { Card.new(1, :hearts)}
  let (:card_seven) { Card.new(2, :hearts)}
  let (:card_eight) { Card.new(3, :hearts)}
  let (:card_nine) { Card.new(2, :hearts)}
  let (:card_ten) { Card.new(4, :hearts)}
  let (:flush) { [card_six, card_seven, card_eight, card_nine, card_ten] }

  describe "Hand#count_cards" do

    it "returns hash of card counts" do
      expect(hand.count_cards(one_pair)).to eq ({1=>1, 2=>2, 3=>1, 4=>1})
    end

  end

  describe "Hand#all_same_suit?" do

    it "returns hash of card counts" do
      expect(hand.all_same_suit?(flush)).to eq true
    end

  end
  describe "Hand#straight_flush?" do
    it "returns true if hand is a straight flush" do
      expect(hand.straight_flush?({1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1}, true)).to eq true
    end
    it "returns false if hand is not a straight" do
      expect(hand.straight_flush?({1 => 1, 6 => 1, 3 => 1, 4 => 1, 5 => 1}, true)).to eq false
    end

  end

  describe "Hand#four_of_a_kind?" do
    it "returns true if hand has four of a kind" do
      expect(hand.four_of_a_kind?({1 => 4, 2 => 1})).to eq true
    end
    it "returns false if hand has 5 different cards" do
      expect(hand.four_of_a_kind?({1 => 1, 6 => 1, 3 => 1, 4 => 1, 5 => 1})).to eq false
    end

  end

  describe "Hand#full_house?" do
    it "returns true if hand is full house" do
      expect(hand.full_house?({1 => 3, 2 => 2})).to eq true
    end
    it "returns false if hand is not a full house" do
      expect(hand.full_house?({1 => 1, 6 => 1, 3 => 1, 4 => 1, 5 => 1})).to eq false
    end

  end

  describe "Hand#flush?" do
    it "returns true if hand is a flush" do
      expect(hand.flush?(true)).to eq true
    end
    it "returns false if hand is not a flush" do
      expect(hand.flush?(false)).to eq false
    end

  end

  describe "Hand#straight?" do
    it "returns true if hand is a straight" do
      expect(hand.straight?({1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1})).to eq true
    end
    it "returns false if hand is not a straight" do
      expect(hand.straight?({1 => 1, 6 => 1, 3 => 1, 4 => 1, 5 => 1})).to eq false
    end

  end

  describe "Hand#three_of_a_kind?" do
    it "returns true if hand has three of a kind" do
      expect(hand.three_of_a_kind?({1 => 3, 2 => 1})).to eq true
    end
    it "returns false if hand has 5 different cards" do
      expect(hand.three_of_a_kind?({1 => 1, 6 => 1, 3 => 1, 4 => 1, 5 => 1})).to eq false
    end

  end

  describe "Hand#two_pair?" do
    it "returns true if hand has two pairs" do
      expect(hand.two_pair?({1 => 2, 2 => 2, 4 => 1})).to eq true
    end
    it "returns false if hand has one pair" do
      expect(hand.two_pair?({1 => 2, 3 => 1, 4 => 1, 5 => 1})).to eq false
    end

  end

  describe "Hand#one_pair?" do
    it "returns true if hand has one pair" do
      expect(hand.one_pair?({1 => 2, 2 => 1, 4 => 1, 5 => 1})).to eq true
    end
    it "returns false if hand has no pair" do
      expect(hand.one_pair?({1 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1})).to eq false
    end

  end

  describe "Hand#high_card" do
    it "returns value of highest card" do
      expect(hand.high_card({1 => 2, 2 => 1, 4 => 1, 5 => 1})).to eq 5
    end

  end





end
