module A
  def method_a
      puts( 'hello from module A' )
  end
end

class MyClass
  def mymethod
    puts( 'hello from mymethod of class MyClass' ) 
  end
end

ob = MyClass.new
ob.mymethod # hello from mymethod of class MyClass
ob.extend(A)
ob.method_a # hello from module A