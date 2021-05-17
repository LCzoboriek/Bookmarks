feature 'Goes to the bookmarks view' do
  scenario 'it goes to the bookmarks view' do
    visit ('/bookmarks')
    expect(page).to have_content 'Your bookmarks'
  end
end