def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'Hugh')
  fill_in('player_2', with: 'Charlie')
  click_button('Add Names')
end
