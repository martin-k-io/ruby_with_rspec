class Card
  attr_reader :rank
  attr_reader :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  it 'has a type' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
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
