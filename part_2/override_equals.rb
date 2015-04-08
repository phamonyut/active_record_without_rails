class Book
  attr_accessor :title, :isbn
  def initialize(title, isbn)
    @title = title
    @isbn = isbn
  end

  def == (another_book)
    @title == another_book.title && @isbn == another_book.isbn
  end
end

java_book_1 = Book.new('java programming', 123)
java_book_2 = Book.new('java programming', 123)
puts java_book_1 == java_book_2
