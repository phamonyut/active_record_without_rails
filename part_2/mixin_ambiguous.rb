module Foo
  def calc
    puts 'foo calc'
  end
end

module Bar
  def calc
    puts 'bar calc'
  end
end

class MyClass
  # case 1
  include Foo, Bar

  # case 2
  # include Foo
  # include Bar
end

MyClass.new.calc 
# case 1: foo calc
# case 2: bar calc
