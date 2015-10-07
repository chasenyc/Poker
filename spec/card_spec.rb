require 'card'

describe "Card" do
  let (:card) { Card.new }
  it "is a class" do
    expect(card).to be_an_instance_of Card
  end
end

describe 'Card#value' do
  let (:card) { Card.new }

  it "returns a value" do
    expect(card.value).to be > 0
    expect(card.value).to be < 14
  end

  it "can be assigned a new value" do
    card.value = 11
    expect(card.value).to eq 11

    card.value = 1
    expect(card.value).to eq 1
  end
end

describe 'Card#suit' do
  let (:card) { Card.new }
  let (:suits) {[:spades, :hearts, :clubs, :diamonds]}

  it "returns a suit" do
    expect(suits.include?(card.suit)).to eq true
  end
end

# describe
#   let (:card) {Card.new}
#
#   it "returns "
# end
