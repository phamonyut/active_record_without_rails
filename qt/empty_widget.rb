require 'Qt'

app = Qt::Application.new ARGV

top_level_widget = Qt::Widget.new nil
top_level_widget.setWindowTitle 'wow'
top_level_widget.resize 300, 300
child_1 = Qt::TextEdit.new top_level_widget
child_2 = Qt::ComboBox.new top_level_widget
child_3 = Qt::Label.new 'some text', top_level_widget
top_level_widget.show

p top_level_widget.class
p top_level_widget.is_a? Qt::Object

app.exec
