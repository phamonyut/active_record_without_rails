class RedefiningMethod  
  def calc
    puts "First definition method"  
  end  

  def calc
    puts "Second definition method"
  end  
end

RedefiningMethod.new.calc # "Second definition method"