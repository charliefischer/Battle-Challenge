describe Game do
subject(:game) { described_class.new }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe 'attack' do
    it 'reduces HP by 10' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
