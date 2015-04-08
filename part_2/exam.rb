# 1
puts (1 + 2.3).class

# 1
price = "book 20 baht".to_i
puts price

# 2
price = 2.14.to_i
puts price

# 2
["fat", "bat"].each do |word|
  puts word + "-land"
end

# 3
y = "No!"
if true
  y = "Yes!"
end
puts y

# 
def add(x, y)
  x + y
end
puts add 3, 5

# 
dude = {
  age: 44,
  weight: 250,
  net_worth: 25
}
puts dude[:weight]

#
puts "hello" == "hello"

#
class Person
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end
bob = Person.new("bob")
puts bob.name

#
stuff = [:tall, "somchai", 45.23]
p stuff[3]

#
class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
bob = Person.new("bob")
puts bob.name

p 7.times.map { |i| 10 * i }