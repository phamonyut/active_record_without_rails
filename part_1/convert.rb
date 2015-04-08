# fixnum / float to string
p 123.to_s # "123"
p 123.45.to_s # "123.45"

# string to fixnum
p '123'.to_i # 123
p '123.1'.to_i # 123
p '20 baht'.to_i # 20
p 'width 5 pixel'.to_i # 0
p 'not a number'.to_i # 0

# string to float
p '123'.to_f # 123.0
p '123.1'.to_f # 123.1
p '20.99 baht'.to_f # 20.99
p 'increase 15.90'.to_f # 0.0
p 'not a float'.to_f # 0.0

# float to fixnum
p 10.0.to_i #10
p 2.5.to_i # 2
