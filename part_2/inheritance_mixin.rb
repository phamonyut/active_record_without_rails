module MyModule
  def calc
    puts 'my module calc'
  end
end

class Parent
  def calc
    puts 'parent calc'
  end
end

class Child < Parent
  include MyModule
end

Child.new.calc