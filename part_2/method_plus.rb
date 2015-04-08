class Book
  attr_accessor :title
  def initialize(title)
    @title = title
  end
  def + (another_book)
    @title << " & #{another_book.title}"
  end
end

book1 = Book.new('ruby')
book2 = Book.new('java')
p book1 + book2