feature 'reduce health points' do
  scenario 'it reduces player 2 health by 10' do
    sign_in_and_play
    click_button 'ATTACK'
    expect(page).to have_content('Charlie: 59/69 HP')
  end
end
