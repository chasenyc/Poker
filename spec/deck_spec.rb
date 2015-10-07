require 'deck'

describe "Deck" do
  let (:deck) { Deck.new }
  it "is a class" do
    expect(deck).to be_an_instance_of Deck
  end
end

describe "Deck#cards" do
  let (:deck) { Deck.new }

  it "on Initialize, contains 52 Cards" do
    expect(deck.cards.length).to eq 52
    expect(deck.cards.sample).to be_an_instance_of Card
  end
end

describe "Deck#shuffle!" do
  let (:deck) { Deck.new }
  let (:deck_two) { Deck.new }

  it "shuffles cards" do
    deck.shuffle!
    deck_two.shuffle!
    expect(deck.cards).not_to eq(deck_two.cards)
  end
end

describe'Deck#populate_deck' do
  let (:deck) { Deck.new }

  it "populates deck and calls shuffle!" do
    expect(deck).to receive(:shuffle!)
    deck.populate_deck
  end
end


describe 'Deck#deal_card' do
  let (:deck) { Deck.new }
  it "accepts number of cards as an argument" do
    deck.deal_card(5)
  end

  it "returns array of cards" do
    expect(deck.deal_card(5)).to be_an_instance_of Array
    expect(deck.deal_card(4).sample).to be_an_instance_of Card
  end
end
