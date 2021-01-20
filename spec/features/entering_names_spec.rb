feature 'Entering names' do
  scenario 'Enter and return players names' do
    sign_in_and_play
    expect(page).to have_content('Hugh')
    expect(page).to have_content('Charlie')
  end
end
