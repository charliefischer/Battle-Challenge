feature 'Hitpoints' do
  # background do
  #   User.make(p1_name: 'Hugh', p2_name: 'Charlie')
  # end
  scenario 'Tells you your hitpoints' do
    visit '/'
    fill_in('player_1', with: 'Hugh')
    fill_in('player_2', with: 'Charlie')
    click_button('Add Names')
    expect(page).to have_content('Hugh: 69/69 HP')
    expect(page).to have_content('Charlie: 69/69 HP')
  end
end
