module Foo
  def foo
    puts "hooray"
  end
end

class BarA
  include Foo
end

class BarB
  extend Foo
end

BarA.new.foo # hooray!
# BarA.foo # NoMethodError

BarB.foo # heyyyyoooo!
# BarB.new.foo # NoMethodError
