class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # let reduces overall used memory do to its memoization nature
  let!(:card) { Card.new('Ace', 'Spades') } # similar to before

  it 'has a rank and that rank can change' do # example 1
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do # example 2
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error messages' do
    card.suit = 'Nonesense'
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison}, but I got #{card.suit} instead!"
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

# Helper methods do not preserve state
# which causes issues when mutation is needed
