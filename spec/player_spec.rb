describe Player do
  subject(:charlie) { Player.new('Charlie') }
  it 'returns the players name' do
  expect(charlie.name).to eq 'Charlie'
  end
end
