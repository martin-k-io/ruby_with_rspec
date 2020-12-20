RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # In a strict double we have to define what methods it should
    # respond to and what it should return

    # keys are the methods and the values the returned values

    # Approach #1

    # stuntman = double("Mr. Danger", fall_off_ladder: 'Ouch', light_on_fire: true)
    #
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # Approach #2

    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # allow(stuntman).to receive(:light_on_fire).and_return(true)
    #
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # Approach #3

    stuntman = double("Mr. Danger")
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end
