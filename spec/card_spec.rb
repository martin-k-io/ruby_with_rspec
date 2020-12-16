class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  def card
    Card.new('Ace', 'Spades')
  end

  it 'has a rank' do # example 1
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do # example 2
    expect(card.suit).to eq('Spades')
  end
end

# NOTE:
#
# You don't want to think about how it's going to be implemented
# But rather what will be implemented:
# What it should do, what its functionalities should be


# it 'has a type' do is equivalent to
# specify 'has a type' do

# Assertion:
#
# expect(card.type).to(eq('Ace of Spades'))
# expect(1+1).to(eq(2))
