# p 'hello'.respond_to?(:to_i) # true
# p 'hello'.respond_to?(:to_json) # false

# p 'hello'.is_a? String

module MyModule
end

class Parent
end

class MyClass < Parent
  include MyModule
end

p MyClass.new.is_a? MyClass
p MyClass.new.is_a? Object
p MyClass.new.is_a? BasicObject
p MyClass.ancestors

# module MyModule
#   def mm1
#   end
# end
# class Parent
#   @@parent_class_variable = ''
#   def p1
#   end
# end
# class MyClass < Parent
#   @@myclass_class_variable = ''
#   include MyModule
#   def initialize
#     @myclass_instance_variable = ''
#   end
#   def mc1
#   end
#   def mc2
#   end
# end

# p MyClass.instance_methods false
# p MyClass.instance_methods true
# p "parent class vars = #{Parent.class_variables}"
# p "myclass class vars = #{MyClass.class_variables}"
# p "myclass instance vars = #{MyClass.new.instance_variables}"
