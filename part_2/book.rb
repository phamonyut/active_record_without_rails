class Book
  def self.next_page
    puts "turn next page"
  end

  def Book.previous_page
    puts "turn previous page"
  end

  attr_accessor :isbn, :price

  @@cover_page = 'custom cover page'
  @x = 'haha'
  y = 'yyy'

  def initialize(isbn = '', price = 0)
    @isbn  = isbn
    @price = price
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

  def self.cover_page
    @@cover_page
  end

  def self.x
    @x
  end

  # default is 'public'
  def m1
  end

  public
  def m2
  end

  protected

  def m3
  end

  private

  def m4
  end
end

book = Book.new('1234', 250)
book.isbn = 'asdf'
# book.price = 123.123
p book.isbn
p book
book.m1
# book.m2
# book.m3
# book.m4
p Book.cover_page
p Book.x

p Book.class_variables
p Book.instance_variables
p book.instance_variables
p Book.ancestors
p Book.class

Book.next_page
Book.previous_page