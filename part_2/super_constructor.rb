class Parent
  def initialize
    puts 'parent init'
  end
end

class Child < Parent
  def initialize
    super
    puts 'child init'
  end
end

Child.new
# parent init
# child init