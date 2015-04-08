class MyClass
  private
    def priv( aStr )
      return aStr.upcase
    end
  protected
    def prot( aStr )
      return aStr << '!!!!!!'
    end
  public
    def call_protected( obj2 )
      puts obj2.prot("This is a #{obj2.class} - hooray")
    end
    def call_private
      puts priv("This is a #{self.class} - hooray")
    end
    def call_private_from( obj2 )
      #always fails
      puts obj2.priv("This is a #{obj2.class} - hooray")
    end
end

class MyOtherClass < MyClass
end

class MyUnrelatedClass
end

my_obj1          = MyClass.new
my_obj2          = MyClass.new
my_other_obj     = MyOtherClass.new
my_unreleate_obj = MyUnrelatedClass.new

my_obj1.call_protected my_obj2
my_obj1.call_protected my_other_obj
my_obj1.call_private
# my_obj1.call_private_from my_obj1 #error
# my_obj1.call_private_from my_obj2 #error
# my_obj1.call_private_from my_other_obj #error

# my_obj1.call_protected my_unreleate_obj #error
# my_obj1.call_private_from my_unreleate_obj #error