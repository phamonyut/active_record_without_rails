require 'Qt'

class AllWidget < Qt::Widget

  slots 'test(bool)', 'wow()'

  def initialize
    super
    setWindowTitle 'All Widget'
    resize 300, 300
    init_ui
    show
  end

  def init_ui
    vbox = Qt::VBoxLayout.new self

    # check box
    cb = Qt::CheckBox.new 'is available ?', self
    cb.setChecked true
    connect cb, SIGNAL('toggled(bool)'), self, SLOT('test(bool)')

    # label
    lbl = Qt::Label.new 'My label', self

    # text field
    txt = Qt::LineEdit.new self

    # combo box list
    cb_list = Qt::ComboBox.new self
    cb_list.addItem 'ruby'
    cb_list.addItem 'java'
    cb_list.addItem 'c++'

    # button 
    btn = Qt::PushButton.new 'click me', self
    btn.setEnabled false

    vbox.addWidget cb
    vbox.addWidget lbl
    vbox.addWidget txt
    vbox.addWidget cb_list
    vbox.addWidget btn
  end

  def test(bool)
    if bool
      setWindowTitle 'checked'
    else
      setWindowTitle ''
    end
  end

  def wow
  end
end

app = Qt::Application.new ARGV
AllWidget.new
app.exec