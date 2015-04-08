class Parent
  def calc
    puts 'parent calc'
  end
end

class Child < Parent
  def calc
    super
    puts 'child calc'
  end
end

Child.new.calc
# parent calc
# child calc