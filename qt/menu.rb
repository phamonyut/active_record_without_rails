require 'Qt'

class Menu < Qt::MainWindow
  def initialize
    super
    setWindowTitle 'Menu App'
    resize 300, 300
    init_ui
    show
  end

  def init_ui
    # quit = Qt::Action.new '&Quit', self
    file = menuBar().addMenu "&File"
    # file.addAction quit
    # connect quit, SIGNAL("triggered()"), Qt::Application.instance, SLOT("quit()")
  end
end

app = Qt::Application.new ARGV
Menu.new
app.exec