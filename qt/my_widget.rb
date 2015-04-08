require 'Qt'

WIDTH  = 250
HEIGHT = 150

class MyWidget < Qt::Widget

  def initialize
    super
    setWindowTitle "My title"
    setToolTip "This is tooltip"
    resize WIDTH, HEIGHT
    center
    # init_ui
    show
  end

  def center
    qdw = Qt::DesktopWidget.new
    screenWidth = qdw.width
    screenHeight = qdw.height
    x = (screenWidth - WIDTH) / 2
    y = (screenHeight - HEIGHT) / 2
    move x, y
  end

  # def init_ui
  #   quit = Qt::PushButton.new 'Quit', self
  #   quit.resize 80, 30
  #   quit.move 50, 50
  #   connect quit, SIGNAL('clicked()'), $qApp, SLOT('quit()')
  # end
end

app = Qt::Application.new ARGV
MyWidget.new
app.exec