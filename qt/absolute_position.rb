require 'Qt'

class AbsolutePosition < Qt::Widget
  def initialize
    super
    setWindowTitle 'Absolute Position'
    resize 200, 200
    init_ui
    show
  end

  def init_ui
    btn_1 = Qt::PushButton.new 'button 1', self
    btn_2 = Qt::PushButton.new 'button 2', self
    btn_1.move 20, 20
    btn_2.move 100, 100
  end
end

app = Qt::Application.new ARGV
AbsolutePosition.new
app.exec
