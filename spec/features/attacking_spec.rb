feature 'attack button' do
  scenario 'it confirms you attacked opponent' do
    sign_in_and_play
    click_button 'ATTACK'
    expect(page).to have_content "Hugh attacked Charlie"
  end
end
