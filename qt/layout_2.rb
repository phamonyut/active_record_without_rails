require 'Qt'

class Layout < Qt::Widget
  def initialize
    super
    setWindowTitle 'Layout'
    resize 200, 200
    init_ui
    show
  end

  def init_ui
    # vbox = Qt::VBoxLayout.new 
    # hbox = Qt::HBoxLayout.new 

    btn_1 = Qt::PushButton.new 'button 1', self
    btn_2 = Qt::PushButton.new 'button 2', self

    # hbox.addWidget btn_1, 1, Qt::AlignRight
    # hbox.addWidget btn_2

    # vbox.addStretch 1
    # vbox.addLayout hbox
    btn_1.show
    btn_2.show
  end
end

app = Qt::Application.new ARGV
Layout.new
app.exec