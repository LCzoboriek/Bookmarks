require 'bookmark'

describe Bookmark do
  
  context 'bookmark_list' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to eq ["BBC","The Guardian","ITV"]
    end

  end
end