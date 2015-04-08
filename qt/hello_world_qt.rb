require 'Qt'

app = Qt::Application.new ARGV

btn_hello = Qt::PushButton.new('Hello World!')
btn_hello.resize 200, 1000
btn_hello.show()

app.exec()