feature 'updating a bookmark' do
  scenario 'it updates a bookmark' do
    bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    
    visit '/bookmarks'
    expect(page).to have_link 'Makers Academy', href: 'http://www.makersacademy.com'

    first('.bookmark').click_button 'Update'
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/update"

    fill_in('url', with: 'http://www.google.com')
    fill_in('title', with: 'Google')
    click_button('Submit')
    
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end