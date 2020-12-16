RSpec.describe Array do
  it 'has no elements' do
    expect(subject.length).to eq(0)
    subject.push('apple')
    expect(subject.length).to eq(1)
    puts subject.class
  end
end
