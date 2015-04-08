class Accessibility
  def self.class_method
    puts 'call class method'
  end

  def instance_method
    puts 'instance method'
  end
end

Accessibility.class_method
Accessibility.new.class_method #undefined method 