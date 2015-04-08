class ClassVariable
  @@class_count = 0

  def self.increase
    @@class_count += 1
  end

  def self.class_count
    @@class_count
  end

  def increase
    @@class_count += 1
  end

  def class_count
    @@class_count
  end
end

obj1 = ClassVariable.new
obj2 = ClassVariable.new

p ClassVariable.increase # 1
p ClassVariable.increase # 2
p ClassVariable.increase # 3
p ClassVariable.increase # 4

p obj1.class_count
p obj2.class_count

obj1.increase #5
obj1.increase #6
p obj1.class_count
p obj2.class_count
