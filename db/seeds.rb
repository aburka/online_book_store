User.create! email: "test@bookstore.dev", password: "testing1"

author = Author.create!(name: "Ron Rash")

titles = ["Serena", "One Foot in Eden", "Saints at the River", "Burning Bright"]
titles.each do |title|
  Book.create!(title: title)
end

author.books << Book.all
