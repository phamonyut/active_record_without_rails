require 'bigdecimal' 
require 'bigdecimal/math' 
include BigMath

def float_problem
  d = 1.1
  10.times do |i|
    d += 1.1
  end
  puts d # 12.099999999999998 !!!
end

def big_decimal
  b = BigDecimal("1.1")
  10.times do |i|
    b = b + BigDecimal("1.1")
  end
  puts b.to_f # 12.1
end

float_problem
big_decimal

# 1)  2.2
# 2)  3.3
# 3)  4.4
# 4)  5.5
# 5)  6.6
# 6)  7.7
# 7)  8.8
# 8)  9.9
# 9)  11
# 10) 12.1