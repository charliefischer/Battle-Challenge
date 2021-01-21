describe Player do
  subject(:charlie) { Player.new('Charlie') }
  subject(:jack) { Player.new('Jack')}
  it 'returns the players name' do
  expect(charlie.name).to eq 'Charlie'
  end

  describe 'attack' do
    it 'reduces HP by 10' do
      charlie.attack(jack)
      expect(jack.health).to eq 59
    end
  end

  describe 'health ' do
    it 'has a deafult health of 69' do
      expect(charlie.health).to eq 69
    end
  end

  describe 'receive_damage' do
    it 'reduce the health by 10' do
      expect { charlie.receive_damage }.to change { charlie.health }.by(-10)
    end
  end
end
