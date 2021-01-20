feature 'Infrastructure Working' do
  scenario 'Says infrastructure working' do
    visit('/')
    expect(page).to have_content 'Infrastructure working!'
  end
end
