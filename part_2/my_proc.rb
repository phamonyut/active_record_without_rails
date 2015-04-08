begin
  x = 1/0
rescue Exception => e
  x=0
  puts "found #{e.class} exception because of #{e}"
else
  puts 'no error'
ensure
  puts 'ensure'
end
