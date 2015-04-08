$width = 100

class MyWindow
  def initialize
    @width = $width
  end

  def width
    @width
  end
end

p MyWindow.new.width # 100

$width = 200

p MyWindow.new.width # 200