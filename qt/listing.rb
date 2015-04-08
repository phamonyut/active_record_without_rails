require 'Qt'
require 'rest-client'


class Listing < Qt::Widget

  slots 'fetch_data()'

  def initialize
    super
    setWindowTitle 'Listing'
    resize 300, 300
    init_ui
    show
  end

  def init_ui
    btnSend = Qt::PushButton.new 'send', self
    connect btnSend, SIGNAL('clicked()'), self, SLOT('fetch_data()')
  end

  def fetch_data
    puts 'fetch data'
    books = RestClient.get 'http://localhost:3000/books.json'
    puts books.class
    puts books
  end

end

app = Qt::Application.new ARGV
Listing.new
app.exec