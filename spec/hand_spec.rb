require 'hand'
require 'card'
# IMPLEMENT BEFORE EACH
describe "Hand" do
  let (:hand) { Hand.new }
  it "is a class" do
    expect(hand).to be_an_instance_of Hand
  end
end
[
  [1,2,3,4,5]
]
describe "Hand#evaluate_hand" do
  let (:hand) { Hand.new }
  let (:card_one) { Card.new(1, :hearts)}
  let (:card_two) { Card.new(2, :spades)}
  let (:card_three) { Card.new(3, :diamonds)}
  let (:card_four) { Card.new(2, :clubs)}
  let (:card_five) { Card.new(4, :spades)}

  let (:one_pair) { [card_one, card_two, card_three, card_four, card_five] }

  it "identifies a two-pair" do
    expect(hand.evaluate_hand(one_pair)).to eq({:rank => 8, :highest_value => 2, :suit => nil, :cards => [1,2,3,2,4] })
  end

end

describe "Hand#count_cards" do
  let (:hand) { Hand.new }
  let (:card_one) { Card.new(1, :hearts)}
  let (:card_two) { Card.new(2, :spades)}
  let (:card_three) { Card.new(3, :diamonds)}
  let (:card_four) { Card.new(2, :clubs)}
  let (:card_five) { Card.new(4, :spades)}
  let (:one_pair) { [card_one, card_two, card_three, card_four, card_five] }

  it "returns hash of card counts" do
    expect(hand.count_cards(one_pair)).to eq ({1=>1, 2=>2, 3=>1, 4=>1})
  end

end

describe "Hand#all_same_suit?" do
  let (:hand) { Hand.new }
  let (:card_one) { Card.new(1, :hearts)}
  let (:card_two) { Card.new(2, :hearts)}
  let (:card_three) { Card.new(3, :hearts)}
  let (:card_four) { Card.new(2, :hearts)}
  let (:card_five) { Card.new(4, :hearts)}
  let (:one_pair) { [card_one, card_two, card_three, card_four, card_five] }

  it "returns hash of card counts" do
    expect(hand.all_same_suit?(one_pair)).to eq true
  end

end
