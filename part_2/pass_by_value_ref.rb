def inc(val)
  val += 1
end

a = 1
inc a
puts a

def change_string(str)
  str << " I can insult you all you want"
  str << " because you'll never see this"
  str << " because I'm going to replace the whole string!"
  str << " Haha you smell bad!"
  puts str.object_id
  str = "What? I didn't say anything." # I'm so sneaky
  puts str.object_id
end

be_nice_to_me = "hello"
puts be_nice_to_me.object_id
change_string(be_nice_to_me)
puts be_nice_to_me

def reassign(array)
  array = [0, 1]
end

def append(array)
  array << 1
end

array = [0]
reassign(array)
# append(array)
p array



def f(x)
  x = 'y'
end
str = 'hello'
p f(str)
p str
