require 'deck'

describe "Deck" do
  let (:deck) { Deck.new }
  it "is a class" do
    expect(deck).to be_an_instance_of Deck
  end
end
