feature 'Hitpoints' do
  # background do
  #   User.make(p1_name: 'Hugh', p2_name: 'Charlie')
  # end
  scenario 'Tells you your hitpoints' do
    sign_in_and_play
    expect(page).to have_content('Hugh: 69/69 HP')
    expect(page).to have_content('Charlie: 69/69 HP')
  end
end
