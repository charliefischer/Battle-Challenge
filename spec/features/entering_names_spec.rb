feature 'Entering names' do
  scenario 'Enter and return players names' do
    visit '/'
    fill_in('player_1', with: 'Hugh')
    fill_in('player_2', with: 'Charlie')
    click_button('Add Names')
    expect(page).to have_content('Hugh')
    expect(page).to have_content('Charlie')
  end
end
