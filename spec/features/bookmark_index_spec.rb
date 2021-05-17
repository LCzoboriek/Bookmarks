feature 'Visiting a web page' do
  scenario 'It goes to the index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end