def calc
  count = 0
  begin
    print('Enter a number: ')
    aNum = gets.chomp.to_i
    result = 100 / aNum
  rescue Exception => e
    puts('Error: ' + e.to_s + "\nPlease try again.") 
    count += 1
    if count < 5
      retry
    end
  ensure
    puts 'ensure'
  end
    puts "100 / #{aNum} = #{result}" 
end

calc